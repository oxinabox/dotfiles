set nocompatible
let $BASH_ENV = "~/.bash_aliases"
filetype off

call plug#begin('~/.local/share/nvim/plugged')
Plug 'ntpeters/vim-better-whitespace'

"Languages
Plug 'plasticboy/vim-markdown'

"Julia
Plug 'JuliaLang/julia-vim'

"Colors
Plug 'mtglsk/wikipedia.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nielsmadan/harlequin'

"Completion
Plug 'zxqfl/tabnine-vim'

call plug#end()



"Misc Language Plugin Conf
let g:vim_markdown_folding_disabled=1


"Julia
let g:default_julia_version = "devel"
au FileType julia set ts=4 sw=4 sts=4 et


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



