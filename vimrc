" For pathogen.vim: auto load all plugins in .vim/bundle
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on

colorscheme molokai

set cursorline
set number
set hlsearch
set foldmethod=syntax

set t_Co=256
set showcmd		" Show (partial) command in status line.
set tabstop=4
set shiftwidth=4
set hidden
set nostartofline
set autoindent
"set cinoptions=>s,e0,n0,f0,{0,}0,^0,:0.5s,=0.5s,l0,gs,hs,ps,ts,+s,c3,C0,(2s,us,U0,w0,m0,j0,)20,*30
set cindent
set cinoptions=:0.5s,=0.5s
set noerrorbells
set vb t_vb=
set tabpagemax=16
set laststatus=2

" set encoding
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf-8
set termencoding=utf-8

map tl :tabnext<CR>
map th :tabprev<CR>
map tt :tabnew<CR>
map tc :tabclose<CR>

let Tlist_Inc_Winwidth=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_Menu=1
let Tlist_Use_Right_Window=1

map <silent> <F2> \be
map <F5> :set encoding=utf-8<CR>
map <F6> :set encoding=big5<CR>
map <F7> :set paste!<bar>set paste?<CR>
nnoremap <silent> <F8> :Tlist<CR>
nnoremap <silent> <F9> :wincmd p<CR>

nmap <silent> <C-N><C-N> :set nu!<CR>
