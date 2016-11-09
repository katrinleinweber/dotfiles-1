" Vim color file - corporation_modified
" Generated by http://bytefluent.com/vivify 2016-09-01
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "corporation_modified"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#4382ff guibg=#22241d guisp=#22241d gui=NONE ctermfg=69 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#4e4e4e guibg=#bd9037 guisp=#bd9037 gui=NONE ctermfg=239 ctermbg=179 cterm=NONE
hi WildMenu guifg=NONE guibg=#28a6a8 guisp=#28a6a8 gui=NONE ctermfg=NONE ctermbg=37 cterm=NONE
hi SignColumn guifg=#4e4e4e guibg=#7e918e guisp=#7e918e gui=NONE ctermfg=239 ctermbg=66 cterm=NONE
hi SpecialComment guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Title guifg=#4382ff guibg=#22241d guisp=#22241d gui=bold ctermfg=69 ctermbg=235 cterm=bold
hi Folded guifg=#4e4e4e guibg=#28a6a8 guisp=#28a6a8 gui=italic ctermfg=239 ctermbg=37 cterm=NONE
hi PreCondit guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Include guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#4e4e4e guibg=#bd9037 guisp=#bd9037 gui=bold ctermfg=239 ctermbg=179 cterm=bold
hi StatusLineNC guifg=#4e4e4e guibg=#137062 guisp=#137062 gui=bold ctermfg=239 ctermbg=6 cterm=bold
hi NonText guifg=#127265 guibg=NONE guisp=NONE gui=italic ctermfg=6 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#493d41 guisp=#493d41 gui=NONE ctermfg=NONE ctermbg=239 cterm=NONE
hi ErrorMsg guifg=#28a8aa guibg=#916f2b guisp=#916f2b gui=NONE ctermfg=37 ctermbg=94 cterm=NONE
hi Debug guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#238588 guisp=#238588 gui=NONE ctermfg=NONE ctermbg=30 cterm=NONE
hi Identifier guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi StorageClass guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Todo guifg=#4382ff guibg=#bd9037 guisp=#bd9037 gui=NONE ctermfg=69 ctermbg=179 cterm=NONE
hi Special guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi LineNr guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#4e4e4e guibg=#bd9037 guisp=#bd9037 gui=bold ctermfg=239 ctermbg=179 cterm=bold
hi Label guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#4e4e4e guibg=#bd9037 guisp=#bd9037 gui=NONE ctermfg=239 ctermbg=179 cterm=NONE
hi Search guifg=#4e4e4e guibg=#bd9037 guisp=#bd9037 gui=NONE ctermfg=239 ctermbg=179 cterm=NONE
hi Delimiter guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellRare guifg=#4382ff guibg=#22241d guisp=#22241d gui=underline ctermfg=69 ctermbg=235 cterm=underline
hi Comment guifg=#127265 guibg=NONE guisp=NONE gui=italic ctermfg=6 ctermbg=NONE cterm=NONE
hi Character guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi Float guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi Number guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi Boolean guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi Operator guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#2d2d30 guisp=#2d2d30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#4e4e4e guibg=#137062 guisp=#137062 gui=bold ctermfg=239 ctermbg=6 cterm=bold
hi WarningMsg guifg=#28a8aa guibg=#916f2b guisp=#916f2b gui=NONE ctermfg=37 ctermbg=94 cterm=NONE
hi VisualNOS guifg=#4e4e4e guibg=#4180ff guisp=#4180ff gui=underline ctermfg=239 ctermbg=69 cterm=underline
hi DiffDelete guifg=NONE guibg=#22241d guisp=#22241d gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#c04bfa guibg=#22241d guisp=#22241d gui=bold ctermfg=171 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#2d2d30 guisp=#2d2d30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#4e4e4e guibg=#28a6a8 guisp=#28a6a8 gui=italic ctermfg=239 ctermbg=37 cterm=NONE
hi PreProc guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Visual guifg=#4e4e4e guibg=#4180ff guisp=#4180ff gui=NONE ctermfg=239 ctermbg=69 cterm=NONE
hi MoreMsg guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#4382ff guibg=#22241d guisp=#22241d gui=underline ctermfg=69 ctermbg=235 cterm=underline
hi VertSplit guifg=#4e4e4e guibg=#137062 guisp=#137062 gui=bold ctermfg=239 ctermbg=6 cterm=bold
hi Exception guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Keyword guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Type guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#493d41 guisp=#493d41 gui=NONE ctermfg=NONE ctermbg=239 cterm=NONE
hi Cursor guifg=#4e4e4e guibg=#be49f9 guisp=#be49f9 gui=NONE ctermfg=239 ctermbg=13 cterm=NONE
hi SpellLocal guifg=#4382ff guibg=#22241d guisp=#22241d gui=underline ctermfg=69 ctermbg=235 cterm=underline
hi Error guifg=#28a8aa guibg=#916f2b guisp=#916f2b gui=NONE ctermfg=37 ctermbg=94 cterm=NONE
hi PMenu guifg=#4e4e4e guibg=#137062 guisp=#137062 gui=NONE ctermfg=239 ctermbg=6 cterm=NONE
hi SpecialKey guifg=#127265 guibg=NONE guisp=NONE gui=italic ctermfg=6 ctermbg=NONE cterm=NONE
hi Constant guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi Tag guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#28a8aa guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#2b95a8 guisp=#2b95a8 gui=NONE ctermfg=NONE ctermbg=31 cterm=NONE
hi MatchParen guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#be9136 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellBad guifg=#4382ff guibg=#22241d guisp=#22241d gui=underline ctermfg=69 ctermbg=235 cterm=underline
hi Directory guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Structure guifg=#7e9190 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Macro guifg=#be9136 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#4382ff guibg=#22241d guisp=#22241d gui=underline ctermfg=69 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#323228 guisp=#323228 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine guifg=#4e4e4e guibg=#137062 guisp=#137062 gui=bold ctermfg=239 ctermbg=6 cterm=bold
hi cursorim guifg=#4e4e4e guibg=#7e918e guisp=#7e918e gui=NONE ctermfg=239 ctermbg=66 cterm=NONE