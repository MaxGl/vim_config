set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile
set nocompatible
set ruler
set incsearch
set novisualbell
set t_vb=   
set mousehide
set cindent
set cino=l1
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

if has("gui_running")
    set guifont=fixed
endif

colorscheme desert
syntax enable
set hls is
set nocp
" Allow multiple block shifts per selection
vnoremap < <gv
vnoremap > >gv

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

let VCSCommandVCSTypePreference='git'
"
" ctags.vim
let g:ctags_path="~/bin/tags.sh"
let g:ctags_statusline=0
