"=====================================================
"" Vim-plug settings
"=====================================================
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tpope/vim-surround'

call plug#end()

"====================================================
"" Plugin settings
"====================================================

" deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer', 'member']})
inoremap <expr><C-j>   pumvisible() ?  "\<C-n>" : "\<C-j>"
inoremap <expr><C-k>   pumvisible() ?  "\<C-p>" : "\<C-k>"

" jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = 0
set completeopt-=preview

" vim-gitgutter
set updatetime=250

" vim-buffergator
map <F4> :BuffergatorToggle<CR>
let g:buffergator_viewport_split_policy="R"
let g:buffergator_vsplit_size=40
let g:buffergator_autodismiss_on_select=0
let g:buffergator_autoupdate=1
let g:buffergator_show_full_directory_path=0

" NERDTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeMapJumpNextSibling = ''
let NERDTreeMapJumpPrevSibling = ''
let NERDTreeShowHidden=1

" NERDCommenter
let g:NERDDefaultAlign = 'left'

" ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetDirectories=["ultisnips"]

"====================================================
"" General settings
"====================================================

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Appearance
set clipboard=unnamedplus
syntax on
set relativenumber
set number
set list
set lcs=tab:▸\ ,space:·,trail:·,nbsp:_,eol:¬

let g:loaded_matchparen=1

" Indentations
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" File backup
set nobackup
set nowritebackup
set noswapfile

" File specific staff
au FileType python call SetPythonOptions()
au FileType html call SetHtmlOptions()
au FileType htmldjango call SetHtmlOptions()
au FileType javascript call SetJavaScriptOptions()

function SetPythonOptions()
    set colorcolumn=80
    set tabstop=4
    set shiftwidth=4
    set nowrap
    highlight ColorColumn ctermbg=23
endfunction

function SetJavaScriptOptions()
    set nowrap
    set colorcolumn=100
    highlight ColorColumn ctermbg=23
endfunction

function SetHtmlOptions()
    set colorcolumn=
endfunction

"" Key binding

let mapleader=' '

" Moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clear highlight on ESC
noremap <ESC> :noh<CR><ESC>
