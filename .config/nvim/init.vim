syntax enable
"colorscheme base16-default
set background=dark

""""""""""""
" vim-plug "
""""""""""""
call plug#begin('~/.config/nvim/plugged')
" Unmanaged plugin (manually installed and updated)
Plug 'ctrlpvim/ctrlp.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'bling/vim-airline'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-unimpaired'

call plug#end()

let g:ctrlp_root_markers = ['.ycm_extra_conf.py']
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:netrw_browsex_viewer = 'open'

set ignorecase
set laststatus=2
"set tags=./tags,tags;$HOME
set ruler
set number
set shiftwidth=4
set smartindent
set tabstop=4
set softtabstop=4
"set expandtab
set autochdir
set incsearch
set backspace=indent,eol,start

autocmd FileType make setlocal noexpandtab
autocmd FileType /etc/sudoers.tmp setlocal noexpandtab
autocmd FileType *.py setlocal expandtab
autocmd FileType python nnoremap <silent> K :terminal python3 -c 'from %:r import *; help(<cword>)' \| less<CR>
autocmd BufRead *.tpp setlocal syntax=cpp
autocmd BufRead *.inl setlocal syntax=cpp
autocmd BufRead *.ini setlocal syntax=cpp
autocmd BufRead *.mm setlocal syntax=cpp

map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

imap kj <ESC>

nnoremap mm :w<CR>
nnoremap Y y$
nnoremap * :tselect <C-R><C-W><CR>
nnoremap & :Ggrep <C-R><C-W><CR>
nnoremap <silent> <C-j> <C-e>
nnoremap <silent> <C-k> <C-y>
nnoremap <silent> <C-a> :CtrlPMRU<CR>
nnoremap <silent> <C-f> :CtrlPTag<CR>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
