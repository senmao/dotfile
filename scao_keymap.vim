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

" window splits
" map Ctrl+<movement> to Ctrl+w,<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" resize window
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap <c-(> <C-W><
nnoremap <c-)> <C-W>>

" set lead key
let mapleader = ","

" buffer switch
nnoremap ( :bprev<CR>
nnoremap ) :bnext<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" new tab
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabo<CR>

" paste option
nnoremap <leader>cp :set paste! paste?<ESC>

" copy, cut and past with system clipboard
vnoremap <leader>y "+y
noremap <leader>y "+yy
noremap <leader>v "+p
" delete and paste, without putting deleted text in default register
vnoremap <leader>p "_dP

" run python
nnoremap <C-F11> :! python %<CR>
nnoremap <F11> :! python -m pdb %<CR>

" === leader key maps ===
" map shortcut for save
nnoremap <leader>s :w<CR>
" windows path to linux path
nnoremap <leader>/ :s/\\/\//g<CR>

nnoremap <leader>i i <ESC>r
nnoremap <leader>o o<ESC>

" add break point
" remove tailing space in all lines
nnoremap <leader><space> :%s/\s\+$//g<CR><ESC>

" python main part
:autocmd FileType python nnoremap <leader>m oif __name__ == "__main__":<CR>
:autocmd FileType python nnoremap <leader>b oimport pdb; pdb.set_trace()<ESC>
:autocmd FileType python nnoremap <leader>e oimport traceback; traceback.print_exc()<ESC>
" python comment and uncomment shortcut
:autocmd FileType python vnoremap <leader>c :s/^/#/g<CR>
:autocmd FileType python nnoremap <leader>c :s/^/#/g<CR>
:autocmd FileType python vnoremap <leader>cc :s/^#//g<CR>
:autocmd FileType python nnoremap <leader>cc :s/^#//g<CR>

