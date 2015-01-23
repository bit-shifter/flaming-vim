set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe.git'
Plugin 'wincent/command-t.git'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'bling/vim-airline'

" ######## C O L O R S C H E M E S ######## "
Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'endel/vim-github-colorscheme'

" ######## T M U X - I N T E G R A T I O N ######## "
Bundle 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required
