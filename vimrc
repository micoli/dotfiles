"Gotta be first
set nocompatible

filetype off
"
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim

call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'tomasr/molokai'
  Plugin 'vim-airline/vim-airline'
  Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'https://github.com/vim-syntastic/syntastic.git'
"""  Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()
"
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

"" tabs
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set autoindent


" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set listchars=tab:\|\ ,trail:·,eol:¬,nbsp:_
",space:.
set list
"
syntax on
filetype plugin indent on
set mouse=a
set relativenumber
set number
set ignorecase

autocmd ColorScheme * highlight ExtraWhitespace guibg=#4a4b4c guifg=green
highlight ExtraWhitespace  guibg=#4a4b4c guifg=red
match ExtraWhitespace /\s/

set background=dark
let g:solarized_termcolors=256
colorscheme solarized


" Always show statusbar
set laststatus=2
"
" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
"
" Show PASTE if in paste mode
let g:airline_detect_paste=1
"
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
"
"
" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap     <silent> <c-t> :NERDTreeTabsToggle<CR>
noremap  <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1
let g:indent_guides_auto_colors = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


autocmd FileType php set omnifunc=phpcomplete#CompletePHP

""ToggleWhitespace
""CurrentLineWhitespaceOff soft
