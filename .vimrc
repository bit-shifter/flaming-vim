filetype off

if !&diff

   execute pathogen#infect()

endif

syntax on
filetype plugin indent on

set nocompatible

" change the mapleader from \ to ,

let mapleader  = ","

" Quickly edit/reload the vimrc file

nmap <silent> <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set switchbuf=useopen     " reveal already opeend files from quickfix buf rather than
                  " opening new buffers
set nowrap        " don't wrap lines
set tabstop    =3 " a tab is four spaces
set expandtab
set backspace  =indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth =3 " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase, case sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set hlsearch      " highligts last search
set gdefault      " sets global replace as default
set history    =1000  " rememmber more commands and search history
set undolevels =1000  " use many muchos levels of undo
set wildignore =*.swp,*.o,*.a,*.so
set title         " change the terminals title
set visualbell    " don't beep
set noerrorbells  " don't beep
set lazyredraw

set showmode
set showcmd
set wildmenu
set wildmode   =list:longest
set cursorline
set mouse=a
set ruler
"set laststatus=2
set modelines=0
set grepprg=ack

if v:version >= 703
    set relativenumber  " show line numbers relative to cursor
    set undofile        " creates a <FILENAME>.un~ file to undo even after file was closed/reopened
    set undodir=~/.vim/.undo,~/tmp,/tmp
endif

set termencoding=utf-8
set encoding=utf-8
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
set nolist

set nobackup
set noswapfile

" remove scrollbars vor macvim - might affect other gui versions as well
set guioptions-=L
set guioptions-=r

if has("gui_running")
   if has("gui_gtk2")
      set guifont=Droid\ Sans\ Mono\ 11 linespace=0
      "set guifont=Meslo\ 11 linespace=0
   endif
endif



" ######## E D I T I N G ######## "
"set list
"set listchars=trail:.,extends:#,nbsp:.


set pastetoggle=<F2> " turns off auto indenting in vim

" ######## E F F I C I E N C Y  ######## "
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap / /\v
vnoremap / /\v

" moving between splits
nnoremap <leader>w <C-w>v<C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" makes tab key match bracket pairs for moving around
nnoremap <tab> %
vnoremap <tab> %

" <leader>i to toggle invisible characters
nnoremap <leader>i :set list!<CR>

" speed up viewport scrolling a bit
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" save when focus of a file is lost
au FocusLost * :wa

" use jj and kk as escape char - to end modes etc
inoremap jj <ESC>
inoremap kk <ESC>

" clear search highlight with <leader>/
nmap <silent> <leader>/ :nohlsearch<CR>
" use w!! to sudo write a file (if not opened as sudo)
cmap w!! w !sudo tee % > /dev/null

" strip trailing whitespaces in current file with <leader>W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" reselect previously pasted text
nnoremap <leader>v V`]

" ######## P L U G I N S ######## "
nmap <silent> <C-D> ;NERDTreeToggle<CR>

" Ack - search for word under cursor
nnoremap <leader>a :Ack! "<cword>"<CR> 
" use Ack! instead of Ack -- do not switch current buffer to first result
cmap Ack Ack!

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files=1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>


" ######## F I L E T Y P E S ######## "
" autocmd FileType make set listchars=ptab:>.


" ######## C O L O R T H E M E S ######## "

" molokai
"let g:molokai_original = 1
"color molokai

color tomorrow
