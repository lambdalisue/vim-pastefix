function! pastefix#put(cmd) abort
  let internal = getreg('0', 0, 1)
  let external = getreg(v:register, 0, 1)
  return internal ==# external
        \ ? printf('"0%s', a:cmd)
        \ : a:cmd
endfunction
