let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Squirrel File Type Highlighting
au BufNewFile,BufRead *.nut setf squirrel

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'xolox/vim-misc'
Plugin 'JulesWang/css.vim' 
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'skammer/vim-css-color'
Plugin 'AndrewRadev/vim-eco'
Plugin 'kchmck/vim-coffee-script'
Plugin 'sirtaj/vim-openscad'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'

call vundle#end()

" Airline Config
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1

" JavaScript Configs
let javascript_enable_domhtmlcss=1

" Smartindention Configs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Set the CTRL+S command
noremap <silent> <C-S>          :update<CR><ESC>
vnoremap <silent> <C-S>         <C-C>:update<CR><ESC>
inoremap <silent> <C-S>         <C-O>:update<CR><ESC>

" Configure Font
if has('gui_running')
    set guifont=Inconsolata\ for\ Powerline\ 12

    " Only activate the colorscheme when in gui mode.
    " This ensures faster starting.
    colorscheme solarized
    set background=dark
endif

" Activate line numbers everywhere
set number

" Colors
syntax on

filetype plugin indent on
