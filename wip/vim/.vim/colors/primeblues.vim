" PrimeBlues colorscheme for Vim
" Cool text with VFD constants, sunny searches and
" incandescent errors.
" Maintainer: Daniel Lima <danielm@tinyhub.tk>
" Edited by James Prime for personal use!
" License: MIT

if $TERM != 'linux' || has('gui')

set bg=dark
set t_Co=256
let g:colors_name="primeblues"

hi Normal        ctermfg=251    ctermbg=None  cterm=None  guifg=#c6c6c6  guibg=#1c1c1c
hi Cursor        ctermfg=Black  ctermbg=White cterm=None  guifg=Black    guibg=White
hi SpecialKey    ctermfg=28     ctermbg=None  cterm=None  guifg=#008700  guibg=#1c1c1c
hi Directory     ctermfg=33     ctermbg=None  cterm=None  guifg=#0087ff  guibg=#1c1c1c
hi ErrorMsg      ctermfg=202    ctermbg=None  cterm=None  guifg=#ff5f00  guibg=#1c1c1c
hi PreProc       ctermfg=57     ctermbg=None  cterm=None  guifg=#5f00ff  guibg=#1c1c1c
hi Search        ctermfg=208    ctermbg=None  cterm=None  guifg=#ff8700  guibg=#1c1c1c
hi Type          ctermfg=75     ctermbg=None  cterm=None  guifg=#5fafff  guibg=#1c1c1c
hi Statement     ctermfg=75     ctermbg=None  cterm=None  guifg=#5fafff  guibg=#1c1c1c
hi Comment       ctermfg=242    ctermbg=None  cterm=None  guifg=#6c6c6c  guibg=#1c1c1c
hi Identifier    ctermfg=27     ctermbg=None  cterm=None  guifg=#0000ff  guibg=#1c1c1c
hi DiffText      ctermfg=214    ctermbg=None  cterm=None  guifg=#ffaf00  guibg=#1c1c1c
hi Constant      ctermfg=111    ctermbg=None  cterm=None  guifg=#87afff  guibg=#1c1c1c
hi Todo          ctermfg=118    ctermbg=None  cterm=None  guifg=#87ff00  guibg=#1c1c1c
hi Error         ctermfg=196    ctermbg=None  cterm=None  guifg=#ff0000  guibg=#1c1c1c
hi Special       ctermfg=103    ctermbg=None  cterm=None  guifg=#8787af  guibg=#1c1c1c
hi Ignore        ctermfg=220    ctermbg=None  cterm=None  guifg=#ffd700  guibg=#1c1c1c
hi Underline     ctermfg=244    ctermbg=None  cterm=None  guifg=#808080  guibg=#1c1c1c
hi NonText       ctermfg=87     ctermbg=None  cterm=None  guifg=#5fffff  guibg=#1c1c1c
hi MatchParen    ctermfg=208    ctermbg=None  cterm=None  guifg=#ff8700  guibg=#1c1c1c

hi Folded        ctermfg=247    ctermbg=234   cterm=None  guifg=#9e9e9e  guibg=#1c1c1c
hi FoldColumn    ctermfg=247    ctermbg=234   cterm=None  guifg=#9e9e9e  guibg=#1c1c1c
hi StatusLineNC  ctermfg=238    ctermbg=234   cterm=None  guifg=#262626  guibg=#444444
hi StatusLine    ctermfg=247    ctermbg=234   cterm=None  guifg=#262626  guibg=#9e9e9e
hi VertSplit     ctermfg=247    ctermbg=None  cterm=None  guifg=#9e9e9e  guibg=#1c1c1c

hi LineNr        ctermfg=247    ctermbg=234   cterm=None  guifg=#9e9e9e  guibg=#262626
hi CursorLineNr  ctermfg=White  ctermbg=25    cterm=None  guifg=White    guibg=#005faf
hi CursorLine                   ctermbg=236   cterm=None                 guibg=#303030
hi Visual                       ctermbg=238                              guibg=#444444

hi Pmenu         ctermfg=Gray   ctermbg=238   cterm=None  guifg=Gray     guibg=#444444
hi PmenuSel      ctermfg=White  ctermbg=25    cterm=None  guifg=White    guibg=#005faf
hi PmenuSbar     ctermfg=238    ctermbg=236   cterm=None  guifg=#444444  guibg=#303030
hi PmenuThumb    ctermfg=Gray   ctermbg=Gray  cterm=None  guifg=Gray     guibg=Gray

hi DiffAdd       ctermfg=10     ctermbg=None  cterm=None  guifg=#00ff00  guibg=#1c1c1c
hi DiffChange    ctermfg=227    ctermbg=None  cterm=None  guifg=#ffff5f  guibg=#1c1c1c
hi DiffDelete    ctermfg=203    ctermbg=None  cterm=None  guifg=#ff5f5f  guibg=#1c1c1c
hi SignColumn    ctermfg=None   ctermbg=None  cterm=None  guifg=#1c1c1c  guibg=#1c1c1c

end
