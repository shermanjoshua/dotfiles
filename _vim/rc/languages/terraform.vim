" Javascript/Typescript language server
call LspAddServer([#{
	\    name: 'terraform',
	\    filetype: ['terraform', 'tf'],
	\    path: '/opt/homebrew/bin/terraform-ls',
	\    args: ['--stdio'],
	\  }])

