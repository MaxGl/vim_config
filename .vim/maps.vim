nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

nmap <F1> :set invlist<CR>
imap <F1> <ESC>:set invlist<CR>
nmap <F2> :setlocal invspell spelllang=en_us<CR>
imap <F2> <ESC>:setlocal invspell spelllang=en_us<CR>
nmap <F3> :set invnumber<CR>
imap <F3> <ESC>:set invnumber<CR>
nmap <F4> :q<CR>
imap <F4> <ESC>:q<CR>
imap <F5> <ESC>:tabprev<CR>a
nmap <F5> :tabprev<CR>
imap <F6> <ESC>:tabnext<CR>a
nmap <F6> :tabnext<CR>
imap <F7> <ESC>:tabnew<CR>:tj 
nmap <F7> :tabnew<CR>:tj 
nmap <F8> :r !date "+\%d \%h \%Y \%H:\%M.\%S"<CR>
imap <F8> <ESC>:r !date "+\%d \%h \%Y \%H:\%M.\%S"<CR> 
nmap <F10> :qa<CR>

nmap <A-Up> :wincmd k<CR>
nmap <A-Down> :wincmd j<CR>
nmap <A-Left> :wincmd h<CR>
nmap <A-Right> :wincmd l<CR>

imap <A-Up> <ESC>:wincmd k<CR>
imap <A-Down> <ESC>:wincmd j<CR>
imap <A-Left> <ESC>:wincmd h<CR>
imap <A-Right> <ESC>:wincmd l<CR>

nmap <F8> :TagbarToggle<CR>
imap <F8> <ESC>:TagbarToggle<CR>

source ~/.vim/cscope_maps.vim
