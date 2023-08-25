syntax on
set number
set autoindent
set ruler
set history=1000
set showcmd
set nu rnu
set numberwidth=1
set clipboard=unnamed
set showmatch
set laststatus=2
set cursorline

"42 Config
"Activate indentation
filetype off
filetype plugin indent on
filetype plugin on
set smartindent

"Non-expanded, 4-wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab

"Disable vi-compatibility
set nocompatible

"Real-world encoding
set encoding=utf-8

"Interpret modelines in files
set modelines=1

"Do not abandon buffers
set hidden

"Don't bother throttling tty
set ttyfast

"More useful backspace behavior
set backspace=indent,eol,start

"Use statusbar on all windows
set laststatus=2

"Better search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Prevent backups when editing system files
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup

"Source user configuration
if filereadable(expand("~/.myvimrc"))
	source ~/.myvimrc
endif


call plug#begin()

" Themes
Plug 'morhetz/gruvbox'

" IDE
	" EasyMotion
	Plug 'easymotion/vim-easymotion'

	" Nerdtree
	Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fq :q!<CR>

nmap <f1> :FortyTwoHeader<CR>
