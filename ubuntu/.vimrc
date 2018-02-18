" Colours and Things {{{
"colorscheme badwolf		    " awesome colorscheme
colorscheme blues
syntax on			        " turn on syntax processing
" }}}

" Vundle {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" PLUGINS
Plugin 'davidhalter/jedi-vim'
Plugin 'WolfgangMehner/perl-support'
Plugin 'Shougo/unite.vim'    " Required for citation.vim
Plugin 'rafaqz/citation.vim' " Zotero and BibTeX integration
Plugin 'tpope/vim-markdown'  " Markdown support
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'reedes/vim-pencil'   " Support for document-writing
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/csv.vim'    " CSV file support
Plugin 'lervag/vimtex'       " LaTeX support
Plugin 'junegunn/goyo.vim'   " Distraction-free writing
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" Tabs and Spaces {{{
set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4	    	" number of spaces in tab when editing
set expandtab			    " tabs are spaces
" }}}

" UI Configuration {{{
set number			        " show line numbers
" sets syntax highlight to normal for line numbers
hi LineNr ctermfg=232 ctermbg=None guifg=#080808 guibg=#1c1c1c
set showcmd			        " show command in bottom bar
"set cursorline			    " highlight current line
filetype indent on		    " load filetype-specific indent files
"set wildmenu			    " visual autocomplete for command menu
set lazyredraw			    " redraw only when we need to
set showmatch			    " highlight matching [{()}]
hi! link FoldColumn Normal  " sets syntax highlight to normal for the fold-columns
set foldcolumn=8            " trick to get margin on left-hand side
set wrap linebreak nolist   " sets softwrap on
"set textwidth=0             " set for softwrap at 80 characters
"set fo+=t
"set fo-=l
"set wrapmargin=0
"}}}

" Themes {{{
let g:airline_theme='blues' " try tomorrow, jellybeans, and base16-spacemacs
let g:airline_detect_modified=0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_section_a='%{mode(10/10)}'   " (mode, crypt, paste, spell, iminsert)
"let g:airline_section_b                    " (hunks, branch)[*]
let g:airline_section_c='%F'                " (bufferline or filename)
"let g:airline_section_gutter               " (readonly, csv)
let g:airline_section_x='%y'                " (tagbar, filetype, virtualenv)
let g:airline_section_y='%3.4p%% '          " (fileencoding, fileformat)
let g:airline_section_z='%4l/%-4L : %4c'    " (percentage, line number, column number)
" }}}

" Searching {{{
set incsearch			    " search as characters are entered
set hlsearch			    " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable			    " enable folding
set foldlevelstart=10	    " open most folds by default
set foldnestmax=10		    " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent		" fold based on indent level (also could be marker, manual, expr, syntax, or diff)
" }}}

" Custom Movements {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]
" }}}

" Custom Leader {{{
"let mapleader=","       " leader is comma

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>
" }}}

" Ag Settings {{{
" open ag.vim
nnoremap <leader>a :Ag
" }}}

" CtrlP Settings {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" }}}

" Pathogen Settings {{{
"call pathogen#infect()                      " use pathogen
"call pathogen#runtime_append_all_bundles()  " use pathogen
" }}}

" TMUX Settings {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}

" Au Grouping Configurations {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd VimEnter * setlocal tabstop=4
    autocmd VimEnter * setlocal shiftwidth=4
    autocmd VimEnter * setlocal softtabstop=4
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
        \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=4
    autocmd BufEnter *.sh setlocal shiftwidth=4
    autocmd BufEnter *.sh setlocal softtabstop=4
augroup END

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:pencil#textwidth = 80
let g:pencil#joinspaces = 1             " 0=one_space (def), 1=two_spaces
augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text         call pencil#init()
augroup END

augroup plugins
    autocmd!
    "autocmd FileType perl
augroup END
" }}}

" Backup {{
"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp
"set backupskip=/tmp/*,/private/tmp/*
"set directory=~/.vim-tmp,~/.tmp,~/tmp
"set writebackup
" }}}

" tells vim to look for file-specific settings in the last line of the file
set modelines=1
" vim:foldmethod=marker:foldlevel=0
