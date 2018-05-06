" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" General settings
set number
set relativenumber
set showmatch

set hlsearch
set autoindent
set smartindent

set smarttab
set softtabstop=4
set shiftwidth=4
set expandtab

set showcmd
set ruler

set mouse=a

if !exists("g:syntax_on")
    syntax enable
endif

" Used so that Polybar can see the name of the file instead of just showing the name of the terminal
set title

" Themes - Set to monokai theme then make transparent
let g:monokai_term_italic = 1
colorscheme monokai
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight CursorLineNr guibg=NONE ctermbg=NONE

" Binds
" Clear highlighting
nnoremap <CR> :noh<CR><CR>
