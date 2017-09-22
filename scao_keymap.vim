"""""""""""""""""""""""""""""""""""""""""""""""""""
" This file includes general vim settings of scao
"""""""""""""""""""""""""""""""""""""""""""""""""""

" ==================================================
" SETTINGS
" ==================================================

syntax on
filetype on " try to detect filetypes

set foldmethod=indent " fold the code block
set foldlevel=99
set autoindent
set hidden

set number " show line number
set mouse=a " enable mouse
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set backspace=indent,eol,start

"au FileType python set textwidth=80 formatoptions+=t

" set the path auto-complete
set wildmenu
set wildmode=list:longest
" set the time out for accelerate the esc key
set timeoutlen=1000 ttimeoutlen=10
set pastetoggle=<F2>

" set colorcolumn for controlling the line length
set cc=81
hi ColorColumn ctermbg=darkgrey


" ==================================================
" MAPS
" ==================================================

" map jk to ESC for fast exit insert mode
inoremap jk <ESC>
vnoremap jk <ESC>

" set lead key
let mapleader = ","


" resize window
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap <leader>+ <C-W>>
nnoremap <leader>- <C-W><


" buffer switch
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-m> :b#<CR>
nnoremap <C-n> :ls<CR>
nnoremap <leader>bo :1,$bd<CR>
nnoremap <leader>q :bd<CR>

nnoremap <leader>r :redraw!<CR>

let c = 1
while c <= 99
    execute "nnoremap <leader>" . c . "b :" . c . "b<CR>"
    let c += 1
endwhile


" paste option
set pastetoggle=<F3>

" copy, cut and past with system clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+yy
nnoremap <leader>v "+p
" delete and paste, without putting deleted text in default register
vnoremap <leader>p "_dP

" === leader key maps ===
" map shortcut for save
nnoremap <leader>s :w<CR>

" windows path to linux path
nnoremap <leader>/ :s/\\/\//g<CR>

" remove tailing space in all lines
nnoremap <leader><space> :%s/\s\+$//g<CR><ESC>

nnoremap <leader>i i <ESC>r
nnoremap <leader>o o<ESC>


" python main part
:autocmd FileType python nnoremap <leader>am oif __name__ == "__main__":<CR>
:autocmd FileType python nnoremap <leader>ab oimport pdb; pdb.set_trace()<ESC>
:autocmd FileType python nnoremap <leader>ae oimport traceback; traceback.print_exc()<ESC>
" python comment and uncomment shortcut
:autocmd FileType python vnoremap <leader>c :s/^/#/g<CR>
:autocmd FileType python nnoremap <leader>c :s/^/#/g<CR>
:autocmd FileType python vnoremap <leader>cc :s/^#//g<CR>
:autocmd FileType python nnoremap <leader>cc :s/^#//g<CR>

:autocmd FileType python nnoremap <C-F8> :! python %<CR>


" latex part
"nnoremap <leader>tc :!pdflatex -output-directory  ./_output '%:p'<CR>
nnoremap <leader>te $a}<ESC>0i\begin{<ESC>yyp0lcwend<ESC>O


