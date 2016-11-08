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

" set lead key
let mapleader = ","

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
nnoremap ( <C-W><
nnoremap ) <C-W>>

" copy, cut and past with system clipboard
vnoremap <leader>y "+y
noremap <leader>y "+yy
noremap <leader>v "+p
" delete and paste, without putting deleted text in default register
vnoremap <leader>p "_dP

" run python
nnoremap <C-F8> :! python %<CR>
nnoremap <F8> :! python -m pdb %<CR>

" === leader key maps ===
" switch aternative buffer
nnoremap <leader># :b#<CR>
" map shortcut for save
nnoremap <leader>s :w<CR>
" windows path to linux path
nnoremap <leader>/ :s/\\/\//g<CR>
" new tab
nnoremap <leader>t :tabnew<CR>
" close other tabs
nnoremap <leader>q :tabo<CR>

nnoremap <leader>i i <ESC>r

" add break point
nnoremap <leader>b oimport pdb; pdb.set_trace()<ESC>
nnoremap <leader>e oimport traceback; traceback.print_exc()<ESC>

" remove tailing space in current line
nnoremap <leader><space> :%s/\s\+$//g<CR><ESC>

" python main part
:autocmd FileType python nnoremap <leader>m oif __name__ == "__main__":<CR>

" python comment and uncomment shortcut
:autocmd FileType python vnoremap <leader>c :s/^/#/g<CR>
:autocmd FileType python nnoremap <leader>c :s/^/#/g<CR>
":autocmd FileType python nnoremap <leader># o# <ESC>60a=<ESC>o# <ESC>o# <ESC>60a=<ESC>ka
:autocmd FileType python nnoremap <leader># o# <ESC>60a=<ESC>
:autocmd FileType python vnoremap <leader>cc :s/^#//g<CR>
:autocmd FileType python nnoremap <leader>cc :s/^#//g<CR>

