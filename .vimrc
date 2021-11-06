set rnu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set colorcolumn=110
highlight ColorColumn ctermbg=yellow

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'


" ==================================== Mappings =========================================== "
" Find Functions
map <F12> :call 
imap <F12> :call 

" Open .vimrc
map <F2> :tabnew ~/.vimrc<CR>
" Save and reload vimrc
map <F3> :w<CR>:so ~/.vimrc<CR>

" ================================== Auto Commands ======================================== "

" Save file and run python
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" ==================================== Functions ========================================== "
function CatFile()
	execute ':write'
	execute '!cat %'
endfunction
