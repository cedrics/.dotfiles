function! neoformat#formatters#js#enabled() abort
    return ['prettiereslint']
endfunction

function! neoformat#formatters#javascript#prettiereslint() abort
  return {
    \ 'exe': 'prettier-eslint',
    \ 'args': ['--stdin'],
    \ 'stdin': 1,
    \ }
endfunction
