" For pathogen.vim: auto load all plugins in .vim/bundle
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on

" config
if $BG == "dark"
	set background=dark
else
	set background=light
endif

set t_Co=16
set showcmd		" Show (partial) command in status line.
set ts=4
set shiftwidth=4
set hid
set nosol
set ls=2
set ai
"set cinoptions=>s,e0,n0,f0,{0,}0,^0,:0.5s,=0.5s,l0,gs,hs,ps,ts,+s,c3,C0,(2s,us,U0,w0,m0,j0,)20,*30
set cindent
set cinoptions=:0.5s,=0.5s
set noeb
set vb t_vb=
set tabpagemax=16

" set encoding
map <F5> :set encoding=utf-8<CR>
map <F6> :set encoding=big5<CR>
map <F7> :set paste!<bar>set paste?<CR>
"map <F8> :bn!<CR>
"
" set background
"map <F11> :set background=dark<CR>
"map <F12> :set background=light<CR>
map <F11> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

nmap <C-PageUp> :tabprevious<CR>
nmap <C-PageDown> :tabnext<CR>
map <C-PageUp> :tabprevious<CR>
map <C-PageDown> :tabnext<CR>

nmap <C-Insert> :tabnew<CR>
nmap <C-Delete> :tabclose<CR>

" 設定自動轉換為 UTF-8 編碼
" set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set fileencodings=big5,utf-8,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
"set encoding=big5
set tenc=utf8
" 

map tt :tabnext<CR>
map tr :tabprev<CR>
map tn :tabnew<CR>
map td :tabclose<CR>

let Tlist_Inc_Winwidth=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_Menu=1
let Tlist_Use_Right_Window=1

nnoremap <silent> <F8> :Tlist<CR>
nnoremap <silent> <F9> :wincmd p<CR>

map <silent> <F1> :set hls!<CR>
map <silent> <F2> \be

nmap <silent> <C-N><C-N> :set nu!<CR>

au InsertLeave * hi ModeMsg ctermfg=black ctermbg=yellow gui=undercurl guisp=Magenta 
au InsertEnter * hi ModeMsg ctermfg=black ctermbg=grey

set cursorline
set nu
set hls
hi Comment term=bold ctermfg=27

"function Svndiff()
"    let file = system('tempfile')
"    execute 'silent !svn cat ' expand("%") ' > ' file
"    execute 'silent vertical diffsplit ' file
"endfunction

"map <F4> :call Svndiff()<CR>
