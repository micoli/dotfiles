"Gotta be first
set nocompatible

filetype off

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
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'https://github.com/majutsushi/tagbar.git'

  " Optional:
  Plugin 'honza/vim-snippets'
  "
" Plugin 'ntpeters/vim-better-whitespace'
  Plugin 'https://github.com/xolox/vim-easytags.git'
  Plugin 'https://github.com/xolox/vim-misc.git'
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
set copyindent    " copy the previous indentation on autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set smarttab

" --- General settings ---
set backspace=indent,eol,start
set nowrap
set hidden
set ruler
set showcmd
set incsearch
set hlsearch
set listchars=tab:\|\ ,trail:·,eol:¬,nbsp:_
",space:.
set list
"
syntax on
filetype plugin indent on
autocmd filetype python set expandtab
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set mouse=a
set relativenumber
set number

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile


"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber


autocmd ColorScheme * highlight ExtraWhitespace guibg=#4a4b4c guifg=green
highlight ExtraWhitespace  guibg=#4a4b4c guifg=red
match ExtraWhitespace /\s/
:autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""

let HlUnderCursor=1

set background=dark
let g:solarized_termcolors=256
colorscheme solarized


" Always show statusbar
set laststatus=2

""""split
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"
" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to  https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1
"
" Show PASTE if in paste mode
let g:airline_detect_paste=1
"
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
let HlUnderCursor=0
"
"
" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
noremap  <silent> <leader>f :NERDTreeTabsToggle<CR> 
noremap  <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

nmap     <silent> <C-S-n> :bprevious<CR>
nmap     <silent> <C-n> :bnext<CR>
nmap     <silent> <F4> :bw!<CR>
nnoremap <silent> <F5> <C-]>    " <F5> go in tag, <Ctrl-T> go back
nnoremap <silent> <F6> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>
nmap <F8> :TagbarToggle<CR>
"#nmap     <C-S-R> :CtrlP<CR>

" To have NERDTree always open on startup
"""let g:nerdtree_tabs_open_on_console_startup = 1
let g:indent_guides_auto_colors = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


autocmd FileType php set omnifunc=phpcomplete#CompletePHP
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap <leader>t :CtrlPTag<cr>


""ToggleWhitespace
""CurrentLineWhitespaceOff soft


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrl W arrow = move between spanes
" sp  split vertically
" vsp split horizontal
