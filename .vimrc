set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'weynhamz/vim-plugin-minibufexpl'

Plugin 'ingo-library'
Plugin 'SpellCheck'
Plugin 'christoomey/vim-tmux-navigator'


"Languages
Plugin 'plasticboy/vim-markdown'
Plugin 'octave.vim'
Plugin 'JuliaLang/julia-vim'


"Python
Plugin 'hdima/python-syntax'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

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
let g:default_julia_version = "devel"


" Python-mode
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
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

"""Completions
autocmd Filetype *
	\	if &omnifunc == "" | 
	\		setlocal omnifunc=syntaxcomplete#Complete |
	\		call SuperTabChain(&omnifunc, "<c-p>") |
	\		call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
	\	endif 


"Key (re) Bindings
map <F5> :setlocal spell! spelllang=en_us<CR>

imap <Insert> <Nop>
inoremap <S-Insert> <Insert>


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


