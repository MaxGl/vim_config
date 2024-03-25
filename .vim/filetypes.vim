filetype plugin on

au! BufNewFile,BufRead *.gn,*.gni setf gn
au! BufRead,BufNewFile *.p4 set filetype=p4

function! Spaces2()
	setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
endfunction

function! Spaces4()
	setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
endfunction

function! Tabs8()
	setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
endfunction

function! Tabs2()
	setlocal tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
endfunction

augroup FileFormats
	au!
	" git commit message
	au BufRead,BufNewFile,BufEnter COMMIT_EDITMSG setlocal colorcolumn=50,72
	au BufRead,BufNewFile,BufEnter COMMIT_EDITMSG call Spaces2()
augroup END

autocmd   FileType awk  source ~/.vim/tab_spacing4.vim
autocmd   FileType make  source ~/.vim/tab_spacing2.vim
autocmd   FileType html  source ~/.vim/tab_spacing2.vim
autocmd   FileType python  source ~/.vim/tab_to_2spaces.vim
autocmd   FileType ruby  source ~/.vim/tab_to_2spaces.vim
autocmd   FileType sh  source ~/.vim/tab_spacing2.vim
"
autocmd   FileType c   source ~/.vim/tab_spacing2.vim
autocmd   FileType cpp source ~/.vim/tab_spacing2.vim
autocmd   FileType h   source ~/.vim/tab_spacing2.vim

autocmd   FileType js  source ~/.vim/tab_spacing2.vim
autocmd   FileType xml source ~/.vim/tab_spacing4.vim
autocmd   FileType yaml source ~/.vim/tab_to_4spaces.vim
autocmd   FileType txt source ~/.vim/tab_to_2spaces.vim
autocmd   FileType gn  source ~/.vim/tab_to_4spaces.vim
autocmd   FileType markdown source ~/.vim/tab_spacing4.vim
autocmd   FileType java source ~/.vim/tab_to_4spaces.vim
autocmd   FileType conf source ~/.vim/tab_spacing4.vim
