"Tabspacing
set ts=4
set tabstop=4
set cindent
set smartindent
set autoindent
set expandtab
set shiftwidth=4
set noai
set number
set pastetoggle=<F10>
map <F8> :set number!<CR>
map <F7> :set autoindent<CR>
map <A-Left> :tabprevious<CR>
map <A-Right> :tabnext<CR>
"map <F10> :quitall<CR>
map <F1> <Nop>
map! <F1> <Nop>
"set spell
"setlocal spell spelllang=es
"Aplica plugins según tipo de fichero

" taglist plugin configuration
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor = 'latex'
"set ofu=syntaxcomplete#Complete

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
map <F4> :TlistToggle<cr>

let g:Tex_ViewRule_pdf='evince'
let g:Tex_DefaultTargetFormat='pdf'
":set hlsearch
":match ErrorMsg '\%>20v.\+'
set nocursorcolumn
set nocursorline
set wildmenu
set list listchars=tab:»·,trail:·
"Para que autocomplete lo del qt
"set tags +=~/.vim/qttags
"Seteamos el tema
"colorscheme darkblue
colorscheme elflord
"colorscheme marklar

"let &colorcolumn=join(range(80,999),",")
set textwidth=110
set colorcolumn=+1


"Syntax highling
syntax on
filetype plugin indent on
highlight Pmenu        guifg=#00ffff guibg=#000000            ctermbg=0 ctermfg=6
highlight PmenuSel     guifg=#ffff00 guibg=#000000 gui=bold   cterm=bold ctermfg=3
highlight PmenuSbar    guibg=#204d40                          ctermbg=6
highlight PmenuThumb   guifg=#38ff56                          ctermfg=3

nnoremap <C-Up> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)+1)',
 \ '')<CR>
nnoremap <C-Down> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)-1)',
 \ '')<CR>

"let g:pydiction_location = '~/.vim/pydiction-1.2/complete-dict'

":set dictionary+=dict.file
":set dictionary+=%
:set iskeyword+=:
":set complete+=k

"au! BufRead,BufNewFile *.moin
    "\ if getline(1) =~ '^@@ Syntax: 1\.5$' | setf moin1_5
    "\ | else | setf moin1_6 | endif

let g:loaded_matchparen=1

" Use ctrl-[hjkl] to select the active split!
"

map <silent> <c-k> :wincmd k<CR>
map <silent> <c-j> :wincmd j<CR>
map <silent> <c-h> :wincmd h<CR>
map <silent> <c-l> :wincmd l<CR>

"pathogen
execute pathogen#infect()
"vim-flake8
let g:flake8_ignore="E501"
imap <C-space> <Plug>IMAP_JumpForward

"Prevent Pydoc preview window
set completeopt-=preview
