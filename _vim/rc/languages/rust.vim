" Rust language server
call LspAddServer([#{
	\    name: 'rustlang',
	\    filetype: ['rust'],
	\    path: '/usr/local/bin/rust-analyzer',
	\    args: [],
	\    syncInit: v:true
	\  }])
