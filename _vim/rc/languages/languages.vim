let fileList = globpath('./*', 'string*', 1)

function! AddLanguage(opts) abort
  call LspAddServer([opts])
endfunction

for file in fileList
  let contents = readfile(file, 'B') " read file as a blob
  call AddLanguage(blob)
endfor
