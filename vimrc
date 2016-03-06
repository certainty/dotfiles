let mapleader = " "
set encoding=utf-8
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

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
set nojoinspaces
set autoindent
set smartindent
set cindent

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
set paste
set list listchars=tab:»·,trail:·


" Plugins
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-elixir'

call vundle#end()            " required
filetype plugin indent on    " required
" /Plugin


syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#tabline#enabled = 1
let g:tmux_navigator_no_mappings = 1

set statusline+=%{fugitive#statusline()}

" Mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <Leader>r :RunInInteractiveShell<space>
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>wH <C-w>S
nnoremap <Leader>ww <C-w><C-w>
nnoremap <Leader>wd <C-w>q

nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>m :CtrlPMRU<CR>

nnoremap <Leader>gd :GStatus<CR>
nnoremap <Leader>gc :GCommit<CR>
nnoremap <C-s> <ESC>:update<CR>

" TMUX integration
nnoremap <silent> <Leader>th :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader>tj :TmuxNavigateDown<cr>
nnoremap <silent> <Leader>tk :TmuxNavigateUp<cr>
nnoremap <silent> <Leader>tl :TmuxNavigateRight<cr>
nnoremap <silent> <Leader>tp :TmuxNavigatePrevious<cr>

" Auto commands
" strip trailing witespaces
autocmd BufWritePre * :%s/\s\+$//e

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

