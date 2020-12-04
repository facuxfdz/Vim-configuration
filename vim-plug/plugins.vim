" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" My vimrc configs
set nu rnu

nnoremap <silent> <c-a> :bprevious<cr>
nnoremap <silent> <c-d> :bnext<cr>
noremap <c-k> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-j> ddp

" Aspect
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'term'

" Open file explorer automatically at left
autocmd vimenter * NERDTree

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Aspect config
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
