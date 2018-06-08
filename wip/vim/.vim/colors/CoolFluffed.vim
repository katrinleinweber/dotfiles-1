" Vim color file
" Converted from Textmate theme Cool Fluffed using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Cool Fluffed"

hi Cursor ctermfg=235 ctermbg=39 cterm=NONE guifg=#282828 guibg=#00bbff gui=NONE
hi Visual ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#494949 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#383838 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#383838 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#383838 gui=NONE
hi LineNr ctermfg=243 ctermbg=237 cterm=NONE guifg=#777777 guibg=#383838 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#565656 guibg=#565656 gui=NONE
hi MatchParen ctermfg=70 ctermbg=NONE cterm=underline guifg=#679c00 guibg=NONE gui=underline
hi StatusLine ctermfg=251 ctermbg=240 cterm=bold guifg=#c6c6c6 guibg=#565656 gui=bold
hi StatusLineNC ctermfg=251 ctermbg=240 cterm=NONE guifg=#c6c6c6 guibg=#565656 gui=NONE
hi Pmenu ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#494949 gui=NONE
hi IncSearch ctermfg=235 ctermbg=220 cterm=NONE guifg=#282828 guibg=#ffcc00 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#6c6c6c guibg=#282828 gui=NONE

hi Normal ctermfg=251 ctermbg=235 cterm=NONE guifg=#c6c6c6 guibg=#282828 gui=NONE
hi Boolean ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi Character ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6c6c6c guibg=NONE gui=NONE
hi Conditional ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi DiffAdd ctermfg=251 ctermbg=64 cterm=bold guifg=#c6c6c6 guibg=#46830d gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0808 guibg=NONE gui=NONE
hi DiffChange ctermfg=251 ctermbg=23 cterm=NONE guifg=#c6c6c6 guibg=#243958 gui=NONE
hi DiffText ctermfg=251 ctermbg=24 cterm=bold guifg=#c6c6c6 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=232 ctermbg=196 cterm=NONE guifg=#030303 guibg=#fa0d00 gui=NONE
hi WarningMsg ctermfg=232 ctermbg=196 cterm=NONE guifg=#030303 guibg=#fa0d00 gui=NONE
hi Float ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi Function ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi Identifier ctermfg=31 ctermbg=NONE cterm=NONE guifg=#0089b3 guibg=NONE gui=italic
hi Keyword ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi Label ctermfg=220 ctermbg=NONE cterm=NONE guifg=#ffcc00 guibg=NONE gui=NONE
hi NonText ctermfg=238 ctermbg=236 cterm=NONE guifg=#464646 guibg=#303030 gui=NONE
hi Number ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi Operator ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi PreProc ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi Special ctermfg=251 ctermbg=NONE cterm=NONE guifg=#c6c6c6 guibg=NONE gui=NONE
hi SpecialKey ctermfg=238 ctermbg=237 cterm=NONE guifg=#464646 guibg=#383838 gui=NONE
hi Statement ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi StorageClass ctermfg=31 ctermbg=NONE cterm=NONE guifg=#0089b3 guibg=NONE gui=italic
hi String ctermfg=220 ctermbg=NONE cterm=NONE guifg=#ffcc00 guibg=NONE gui=NONE
hi Tag ctermfg=105 ctermbg=NONE cterm=NONE guifg=#858dff guibg=NONE gui=NONE
hi Title ctermfg=251 ctermbg=NONE cterm=bold guifg=#c6c6c6 guibg=NONE gui=bold
hi Todo ctermfg=242 ctermbg=NONE cterm=inverse,bold guifg=#6c6c6c guibg=NONE gui=inverse,bold
hi Type ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyFunction ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=220 ctermbg=NONE cterm=NONE guifg=#ffcc00 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cf7000 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#3399ff guibg=NONE gui=NONE
hi rubyInclude ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#3399ff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=214 ctermbg=NONE cterm=NONE guifg=#f6aa11 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=214 ctermbg=NONE cterm=NONE guifg=#f6aa11 guibg=NONE gui=NONE
hi rubyEscape ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi rubyControl ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyException ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#3399ff guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6c6c6c guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi htmlTag ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi htmlTagName ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi htmlArg ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=31 ctermbg=NONE cterm=NONE guifg=#0089b3 guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=105 ctermbg=NONE cterm=NONE guifg=#858dff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=69 ctermbg=NONE cterm=NONE guifg=#3399ff guibg=NONE gui=NONE
hi yamlAlias ctermfg=69 ctermbg=NONE cterm=NONE guifg=#3399ff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=220 ctermbg=NONE cterm=NONE guifg=#ffcc00 guibg=NONE gui=NONE
hi cssURL ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cf7000 guibg=NONE gui=italic
hi cssFunctionName ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi cssColor ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi cssClassName ctermfg=70 ctermbg=NONE cterm=NONE guifg=#679c00 guibg=NONE gui=NONE
hi cssValueLength ctermfg=99 ctermbg=NONE cterm=NONE guifg=#8138ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=39 ctermbg=NONE cterm=NONE guifg=#00bfff guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE