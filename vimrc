syntax on
set nocompatible
" Plugins
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
PLugin 'docunext/closetag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'tyok/nerdtree-ack'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'janko-m/vim-test'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tyru/open-browser-github.vim'
Plugin 'tyru/open-browser.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" /Plugin


let mapleader = " "
set ttyfast
set t_Co=256
set ai
set wildmode=list:longest
set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set shortmess+=I
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running command
set clipboard^=unnamed
set linebreak

set colorcolumn=+1
set numberwidth=9
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set nocompatible
set laststatus=2
set paste
set list listchars=tab:»·,trail:·,nbsp:·
set infercase
set splitright
set noeb
set nowb
set textwidth=120
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
set nojoinspaces
set autoindent
set smartindent
set cindent
set expandtab
set number
set relativenumber

syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#tabline#enabled = 1
let g:tmux_navigator_no_mappings = 1

set statusline+=%{fugitive#statusline()}

set updatetime=750
let g:gitgutter_realtime=1
let g:gitgutter_eager=1

if has("autocmd")
  " Kill all the whitespace
  autocmd BufWritePre * :%s/\s\+$//e

  " File recognition
  autocmd BufNewFile,BufRead Gemfile,Thorfile,Guardfile,Appraisals,Rakefile set filetype=ruby
  autocmd BufNewFile,BufRead *.hbs set filetype=html
end

let pairs = { ":" : ":",
      \ "." : ".",
      \ "/" : "/",
      \ '\|' : '\|',
      \ "*" : "*",
      \ "-" : "-",
      \ "_" : "_" }

for [key, value] in items(pairs)
  exe "nnoremap ci".key." T".key."ct".value
  exe "nnoremap ca".key." F".key."cf".value
  exe "nnoremap vi".key." T".key."vt".value
  exe "nnoremap va".key." F".key."vf".value
  exe "nnoremap di".key." T".key."dt".value
  exe "nnoremap da".key." F".key."df".value
  exe "nnoremap yi".key." T".key."yt".value
  exe "nnoremap ya".key." F".key."yf".value
endfor

" Mappings

"disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map      <Leader>s :w<CR>
nnoremap <Leader><Leader> <c-^> "toggle files

" splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <Leader>wh <C-w>S
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>ww <C-w><C-w>
nnoremap <Leader>wd <C-w>q

noremap <leader>j <C-W>j<C-W>_
noremap <leader>k <C-W>k<C-W>_

nnoremap <F3> :set hlsearch!<CR>                        " toogle search highlighting
nnoremap <F2> :set paste!<CR>                           " toogle paste mode
nnoremap <5> :!ctags -R<CR>                            " ctags

nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>m :CtrlPMRU<CR>

" vim-test bindings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>lt :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Move between changed areas
nmap <leader>h <Plug>GitGutterNextHunk
nmap <leader>H <Plug>GitGutterPrevHunk


" TMUX integration
nnoremap <silent> <Leader>th :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader>tj :TmuxNavigateDown<cr>
nnoremap <silent> <Leader>tk :TmuxNavigateUp<cr>
nnoremap <silent> <Leader>tl :TmuxNavigateRight<cr>
nnoremap <silent> <Leader>tp :TmuxNavigatePrevious<cr>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

