" Plugin: https://github.com/bfredl/nvim-ipy
" vim: et ts=2 sts=2 sw=2

scriptencoding utf-8

" TODO: This variable is actually not defined as of yet by nvim-ipy
if !get(g:, 'loaded_nvim_ipy', 1)
  finish
endif

function! airline#extensions#nvimipy#status()
    " TODO: Is this a safe way to check if the current buffer is an ipy
    " buffer?
    if expand('%') != '[jupyter]'
        return ''
    endif

    return g:ipy_status
endfunction

function! airline#extensions#nvimipy#init(ext)
  call airline#parts#define_function('nvimipy', 'airline#extensions#nvimipy#status')
endfunction

" TODO: Add User autocommands to nvim-ipy so we can call :AirlineRefresh
" when things change
