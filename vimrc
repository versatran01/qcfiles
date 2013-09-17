"""""""plugins""""""""
call pathogen#infect('~/.vim/bundle')

set nocompatible
syntax on
filetype plugin indent on
set ofu=syntaxcomplete#Complete

nmap :tb :TagbarToggle<CR>
nmap :nt :NERDTreeToggle<CR>
nmap :res :bo cw<CR>
map <F9> :bo cw<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg

let g:NERDTreeDirArrows=0

"""""""""vimwiki"""""""""
"let wiki = {}
"let wiki.path = '~/vimwiki/'
"let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"let wiki.template_path = '~/vimwiki/templates'

let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'nested_syntaxes': {'python': 'python', 'c++': 'cpp'},
            \ 'template_path': '~/vimwiki/templates/',
            \ 'template_default': 'def_template',
            \ 'template_ext': '.html'}]
let g:vimwiki_folding = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

""""""color"""""""""""
    if has('gui_running') 
        set background=dark
        colorscheme solarized
        set guifont=Monaco:h13
    else
        colorscheme desert
    endif

"""""editting"""""""""
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set number
set ignorecase
set smartcase
set incsearch

au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

let g:Tex_ViewRule_pdf = 'Preview'

nmap j gj
nmap k gk

