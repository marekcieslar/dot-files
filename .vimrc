set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'maksimr/vim-jsbeautify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" colors
set t_Co=256
colors one-dark

if has("autocmd")                                                                                                                                                           
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!                                                                                                 
    au InsertEnter,InsertChange *                                                                                                                                           
                \ if v:insertmode == 'i' |                                                                                                                                  
                \   silent execute '!echo -ne "\e[6 q"' | redraw! |                                                                                                         
                \ elseif v:insertmode == 'r' |                                                                                                                              
                \   silent execute '!echo -ne "\e[4 q"' | redraw! |                                                                                                         
                \ endif                                                                                                                                                     
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!                                                                                                              
endif 

set number
set relativenumber

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" set highight after find, use :nohls to unhighlight
set hls

inoremap (<cr> (<cr>)<c-o><s-o>
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>

" copy in visual with C-c
vnoremap <C-c> "*y

map <C-n> :NERDTree<CR>
map <C-m> :NERDTreeToggle<CR>
" jsBeautify
" for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
