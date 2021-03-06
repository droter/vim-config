if &filetype != 'cpp'
  setlocal sw=4 sts=4 ts=4
  setlocal errorformat=%f:%l:\ %m

  map <buffer> <Leader>c :!gcc -std=c99 -Wall -o %:r %
  map <buffer> <Leader>r :!<C-R>=fnamemodify(expand('%'),':p:r')<CR>
endif
