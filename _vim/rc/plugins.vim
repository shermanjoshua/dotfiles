" Load all the plugins automatically on startup

filetype off
filetype plugin indent off

packadd lsp

" Increase timeout for YouCompleteMe
let g:neobundle#install_process_timeout=300

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  set runtimepath+=~/.vim/rc/plugins/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

runtime! rc/plugins/*.vim

call neobundle#end()

filetype plugin indent on
syntax on

NeoBundleCheck
