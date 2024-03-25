set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mgedmin/taghelper.vim'
set statusline=%<%f\ %h%m%r\ %1*%{taghelper#curtag()}%*%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-python/python-syntax'
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jremmen/vim-ripgrep'
nmap <C-\>r :Rg <C-R>=expand("<cword>")<CR><CR>	

" Now we can turn our filetype functionality back on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'rightson/vim-p4-syntax.git'
