set nocompatible
let $BASH_ENV = "~/.bash_aliases"
filetype off

call plug#begin('~/.local/share/nvim/plugged')


Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_skip_empty_lines=1

Plug 'tpope/vim-sleuth'


"Languages
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1


Plug 'JuliaLang/julia-vim'
let g:default_julia_version = "devel"
au FileType julia set ts=4 sw=4 sts=4 et



"Colors
Plug 'mtglsk/wikipedia.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nielsmadan/harlequin'

"Completion
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
let g:deoplete#enable_at_startup = 1

call plug#end()

"Key (re) Bindings
map <F5> :setlocal spell! spelllang=en_us<CR>

imap <Insert> <Nop>
inoremap <S-Insert> <Insert>

"Commands
command SortCSL call setline('.', join(sort(split(getline('.'), ', ')), ", "))

command! -bang -range -nargs=1 -complete=file MoveWrite  <line1>,<line2>write<bang> <args> | <line1>,<line2>delete _
command! -bang -range -nargs=1 -complete=file MoveAppend <line1>,<line2>write<bang> >> <args> | <line1>,<line2>delete _

command! -bang -range -nargs=1 -complete=file ExtractToFile  <line1>,<line2>write<bang> <args> | <line1>,<line2>delete _ | :normal iinclude("<args>")<CR><ESC>

"Interfacing
set mouse=a


"Appearence
syntax enable

if localtime()%2==0
	colorscheme zellner
elseif localtime()%2==1
	colorscheme harlequin
	highlight Visual term=reverse cterm=reverse ctermbg=Grey
end

set number
highlight LineNr ctermfg=green


