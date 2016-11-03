" Colours and Things {{{
"colorscheme badwolf		    " awesome colorscheme
colorscheme monokai
syntax on			        " turn on syntax processing
" }}}

" Tabs and Spaces {{{
set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4	    	" number of spaces in tab when editing
set expandtab			    " tabs are spaces
" }}}

" UI Configuration {{{
"set number			        " show line numbers
set showcmd			        " show command in bottom bar
"set cursorline			    " highlight current line
filetype indent on		    " load filetype-specific indent files
"set wildmenu			    " visual autocomplete for command menu
set lazyredraw			    " redraw only when we need to
set showmatch			    " highlight matching [{()}]
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
call pathogen#infect()                      " use pathogen
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
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
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
