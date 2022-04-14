set nocompatible              " be iMproved, required
filetype off                  " required

set t_Co=256

" Powerline
set laststatus=2

" Set numbering
set number
set relativenumber

" turn on systax highlighting

syntax on
let python_highlight_all=1

" set tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

set clipboard=unnamed

set spell spelllang=en_gb

" Install Vim-plug automatically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Vim-Plug section
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'

" Make sure you use single quotes

Plugin 'OmniSharp/omnisharp-vim'

" Initialize plugin system
call plug#end()

au VimEnter * :PlugInstall<CR>
au VimEnter * :OmniSharpInstall<CR>
au VimEnter * :OmniSharpStartServer<CR>

" sets Omnisharp to use tab
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
