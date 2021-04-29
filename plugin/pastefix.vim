if exists('g:loaded_pastefix') || !has('nvim')
  finish
endif
let g:loaded_pastefix = 1

nnoremap <silent><expr> <Plug>(pastefix-p) pastefix#put('p')
nnoremap <silent><expr> <Plug>(pastefix-P) pastefix#put('P')

if !get(g:, 'pastefix_no_default_mappings')
  nmap p <Plug>(pastefix-p)
  nmap P <Plug>(pastefix-P)
endif
