let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running command
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nojoinspaces
set textwidth=120
set colorcolumn=+1
set number
set relativenumber
set numberwidth=5
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set nocompatible
set laststatus=2
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#tabline#enabled = 1
set statusline+=%{fugitive#statusline()}

" Mappings
nnoremap <Leader>r :RunInInteractiveShell<space>
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>wH <C-w>S
nnoremap <Leader>ww <C-w><C-w>
nnoremap <Leader>wd <C-w>Q

nnoremap <Leader>p :CtrlPMixed<CR>
nnoremap <Leader>pp :CtrlP<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>
nnoremap <Leader>pm :CtrlPMRU<CR>

nnoremap <Leader>gd :GStatus<CR>
nnoremap <Leader>gc :GCommit<CR>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

