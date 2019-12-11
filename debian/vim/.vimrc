" Pacotes que tenho instalados no Debian
" exuberant-ctags vim-addon-manager vim-common vim-ctrlp vim-nox vim-runtime vim-scripts vim-snippets vim-syntastic vim-youcompleteme

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamedplus                      " Ver se vim-gtk3 está instalado
set showcmd                                    " Show (partial) command in status line.
set showmatch                                  " Show matching brackets.
set ignorecase                                 " Do case insensitive matching
set smartcase                                  " Do smart case matching
set incsearch                                  " Incremental search
"set autowrite                                 " Automatically save before commands like :next and :make
"set hidden                                    " Hide buffers when they are abandoned
"set mouse=a                                   " Enable mouse usage (all modes)
set number
set wildmenu
set splitbelow
set splitright
set nofoldenable

" Default filebrowser options
let g:netrw_altv=0                             " open files at right
let g:netrw_preview=1                          " split vertical default
let g:netrw_winsize=-25                        " size of file browser window
let g:netrw_banner=0                           " no information banner
let g:netrw_liststyle=3                        " tree list style
let g:netrw_list_hide='.*\.swp$,\.git,__pycache__,bin,include,lib,lib64,share,pyvenv.cfg' "hide swap files
let g:netrw_chgwin=2

" Trigger Snippet completetion
let g:UltiSnipsExpandTrigger="<c-space>"       " pode usar <tab> para autocomplete tambem
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion=3

" TagList plugin (needs exuberant-ctags)
let generate_tags=1                            " automaticaly generate
let g:ctags_statusline=1                       " show function names
let g:jedi#force_py_version=3                  " jedi use py3
let Tlist_Use_Horiz_Window=0                   " show vertical navigation
let Tlist_Use_Right_Window=1                   " show at right
let Tlist_Compact_Format=1                     " compact
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Close_On_Select=1

" Ctrl+P for file search
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" Buffer navigation
nmap <A-Left> :bp<CR>
nmap <A-Right> :bn<CR>
nmap <A-Down> :bd<CR>

" Window navigation
nmap <C-Up> <C-w>k
nmap <C-Down> <C-w>j
nmap <C-Left> <C-w>h
nmap <C-Right> <C-w>l

" Window scaling
nmap <C-S-Up> <C-w>+
nmap <C-S-Down> <C-w>-
nmap <C-S-Left> <C-w><
nmap <C-S-Right> <C-w>>

" Window moving
nmap <C-PageUp> <C-w>R
nmap <C-PageDown> <C-w>r

" Function keys
map <F2> :Vexplore<CR>
map <F3> :TlistOpen<CR>
map <F4> :ImportName<CR>

" Autocomplete
imap =' =''<Left>
imap =" =""<Left>

