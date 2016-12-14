" ================================================== 
" Vundle Plugins
" ==================================================
" install vundle plugin firstly from git
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'terryma/vim-multiple-cursors'

Plugin 'Valloric/YouCompleteMe.git' " requires 7.4 or later
Plugin 'scrooloose/syntastic.git'
Plugin 'vim-scripts/taglist.vim.git'
"Plugin 'scrooloose/nerdcommenter'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
" Plugin 'taglist'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" ================================================== 
" PLUGINS Settings
" ==================================================
let mapleader = ","

" let NERDTreeWinPos="right"
"let NERDTreeHijackNetrw=1
" map shortcut for NERDTree
map <F5> :NERDTree<CR>
let NERDTreeIgnore = ['\.pyc$']
" automatically open NERDTree
"au VimEnter * NERDTree
" move the cursor back
"au VimEnter * wincmd p
let NERDTreeIgnore = ['\.pyc$', '\.lo$', '\.o$']

" --airline--
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'


" --Taglist--
" map shutcut for TlistOpen
"""map <F6> :exe "let Tlist_Use_Horiz_Window=0"<CR>:TlistOpen<CR>
" show the tag list window on the right side
"""let Tlist_Use_Right_Window = 1
"""let Tlist_Use_Horiz_Window = 1
"""let Tlist_Sort_Type = "name"
"command Tlist1 TlistOpen | exe "resize".(&lines/2) | wincmd k | wincmd H | exe "vertical resize".(&columns-30)
"""nnoremap <C-F6> :exe "let Tlist_Use_Horiz_Window=1"<CR>:TlistOpen<CR>:exe "resize".(&lines/2)<CR>:wincmd k<CR>:wincmd H<CR>:exe "vertical resize".(&columns-30)<CR>


"--Syntastic--
highlight SpellBad term=reverse ctermbg=DarkGray ctermfg=White cterm=undercurl
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <leader>q :SyntasticCheck<CR>
" ignore some pep8 errors or warnings
" E501: the line exceed 80 characters
" W391: warning of blank line in end of file
" E303: too many blank line before
let g:syntastic_python_flake8_args='--ignore=E501,W391,E303'


" --ctrlp--
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = { 'dir':  '\.git$',
            \ 'file': '\.pyc$' }

" --youcompleteme--
let g:ycm_key_invoke_completion = '<leader>h'
nnoremap <leader>g :YcmCompleter GoTo<ESC>

