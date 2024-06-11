#!/bin/sh

# Make symbolic links to home folder
link_file() {
  source="${PWD}/$1"
  target="${HOME}/${1/_/.}"

  if [ -e $target ] ; then
    if [ ! -d $target ] ; then
      echo "Update\t$target"
      mv $target $target.bak
      ln -sf ${source} ${target}
    fi
  else
    echo "Install\t$target"
    ln -sf ${source} ${target}
  fi
}

for i in _*
do
  link_file $i
done

# Install Homebrew and Brew-File

brew install rcmdnk/file/brew-file
brew file install ./_brewfile/Brewfile

# Change default shell to ZSH
echo "Change shell to ZSH...."
if [ ! $SHELL = "/bin/zsh" ]
then
  chsh -s /bin/zsh
fi

# Vim Package Manager Install
echo "Installing neobundle!!!"
if [ ! -d $HOME/.vim/bundle/neobundle.vim ]
then
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# Install Oh-My-ZSH
echo "Installing oh-my-zsh!!!"
if [ ! -d $HOME/.oh-my-zsh ]
then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Workaround for now, copy tmux-vim-select-pane manually
echo "Moving tmux-vim-select-pane. If you aren't root, you're gonna be sad..."
sudo cp ./_bin/tmux-vim-select-pane /opt/homebrew/bin
