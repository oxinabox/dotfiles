set nocompatible
let $BASH_ENV = "~/.bash_aliases"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/deoplete.nvim'


Plugin 'ingo-library'
Plugin 'SpellCheck'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'majutsushi/tagbar'


Plugin 'benekastah/neomake'

"Languages
Plugin 'plasticboy/vim-markdown'
Plugin 'octave.vim'


"Julia
Plugin 'JuliaLang/julia-vim'
"Plugin 'zyedidia/julialint.vim'


"Python
Plugin 'hdima/python-syntax'
Plugin 'klen/python-mode'

"Colors
Plugin 'mtglsk/wikipedia.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

filetype plugin indent on

"""Octave
augroup filetypedetect
	  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
	  au! BufRead,BufNewFile *.m,*.oct set syntax=matlab
augroup END
" if octave-infowas installed ith would work
"autocmd FileType matlab setlocal keywordprg=info\ octave\ --vi-keys\ --index-search


"Misc Language Plugin Conf
let g:vim_markdown_folding_disabled=1


"Julia
let g:default_julia_version = "devel"
autocmd FileType julia   
	\	let &tags = fnamemodify(expand('%'),':t:s#^#.#:s#$#.tags#') |
"	\	let g:ycm_collect_identifiers_from_tags_files = 1 



" Python-mode
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes"
let g:pymode_lint_ignore = "W"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0
autocmd FileType python setlocal completeopt-=preview

"""Refactoring
let g:ackprg = 'ag --nogroup --nocolor --column'



"""Completions
"autocmd Filetype *
"	\	if &omnifunc == "" | 
"	\		setlocal omnifunc=syntaxcomplete#Complete |
"	\		call SuperTabChain(&omnifunc, "<c-p>") |
"	\		call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
"	\	endif 
"

"let g:ycm_python_binary_path = '/usr/bin/python3'
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>','Enter']
"let g:ycm_seed_identifiers_with_syntax = 1
let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources = ['buffer','tag','omni','file']



"Key (re) Bindings
map <F5> :setlocal spell! spelllang=en_us<CR>

imap <Insert> <Nop>
inoremap <S-Insert> <Insert>

"Commands
command SortCSL call setline('.', join(sort(split(getline('.'), ', ')), ", "))

"Interfacing
set mouse=a


"Appearence
syntax enable
set background=dark
colorscheme solarized

"Indenting
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set noexpandtab 


