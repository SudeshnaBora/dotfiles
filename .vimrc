syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile

set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" color scheme
Plug 'morhetz/gruvbox'
" git logs, diff and blame
Plug 'tpope/vim-fugitive'
" vim manual page
Plug 'vim-utils/vim-man'
" file finding
Plug 'git@github.com:kien/ctrlp.vim.git'
" auto complete
Plug 'git@github.com:Valloric/YouCompleteMe.git'
" undo tree
Plug 'mbbill/undotree' 
" fast grep 
Plug 'jremmen/vim-ripgrep'
" linter and fixer
Plug 'dense-analysis/ale'

call plug#end()

colorscheme gruvbox
set background=dark

" to check git root and faster searching by utilising git ignore

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browser_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0
" remove the preview box post insertion and/or completion
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1



nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
