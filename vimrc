"define the prefix of shortcut key, that is <leader>
let mapleader="\<Space>"


"----Plugin Management--------
"Vundle - vim plugin manager
"Vundle environment setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"Vundle plugin list
call vundle#begin()

"let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"colorschemes, remember copy [colorscheme].vim to ~/.vim/colors
Plugin 'tomasr/molokai' 
Plugin 'phd'

"C++ syntax highlighting tool
Plugin 'octol/vim-cpp-enhanced-highlight'

"*.cpp and *.h switch
Plugin 'derekwyatt/vim-fswitch'
"switch to the file and load it into a new window split on the right
:nnoremap <Leader>sw :FSSplitRight<cr> 

"codes completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='/home/zhanghao/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

"NERDtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"nnoremap <Leader>fl :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeTabsToggle<cr>
let NERDTreeWinSize=48
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1

""visualize indent : not works well
"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=1
":nnoremap <Leader>i :IndentGuidesToggle

call vundle#end()
"filetype plugin indent on
"-----------------------------


"----Coding Enviroment Setting
"color
set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd

""forbid cursor blinking
"set gcr=a:block-blinkon0
""forbid to display scroll bars
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R
""forbid to display menu and tool bars 
"set guioptions-=m
"set guioptions-=T

"display status bar
set laststatus=2
"display cursor's current location
set ruler
"display line number
set nu
"highlight current row and col
set cursorline
"set cursorcolumn
"highlight searching results
set hlsearch

"open syntax highlighting
syntax enable
"allow specified syntax highlighting colorscheme to replace default
syntax on

"open file type detection
filetype on
"load corresponding plugin according to different file type detected
filetype plugin on
"open smart indent for different programming language
filetype indent on
"tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"folding settings
"za: fold or unfold
"zM: fold everything
"zR: unfold everything
set foldmethod=syntax  "fold based on syntax
"set foldmethod=indent  "fold based on indent
set nofoldenable "do not fold by default
set foldnestmax=10 "deepest fold is 10 levels
"-----------------------------


"let config work instantly
autocmd BufWritePost $MYVIMRC source $MYVIMRC

