" (全角スペース|タブ|行末スペース)を可視化する
" --------------------------------------------
" http://d.hatena.ne.jp/studio-m/20080117/1200552387
" http://d.hatena.ne.jp/potappo2/20061107/1162862536
" タブ文字				
" 行末スペース    
" 全角スペース　　
if has('syntax')
  function! CodeHighlight()
    syntax match Tab "\t" display containedin=ALL
    hi Tab term=underline cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE

    syntax match JpSpace "　" display containedin=ALL
    hi JpSpace term=underline cterm=underline ctermbg=NONE guibg=NONE

    syntax match WhitespaceEOL "\s\+$" display containedin=ALL
    hi WhitespaceEOL term=underline cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE
  endf

  augroup invisible
  autocmd! invisible
  autocmd BufRead,BufNewFile,VimEnter,WinEnter * call CodeHighlight()
  augroup END
endif
