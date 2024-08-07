set nocompatible
let $BASH_ENV = "~/.bash_aliases"
filetype off

call plug#begin('~/.local/share/nvim/plugged')


Plug 'ntpeters/vim-better-whitespace'

" Seems to incorrectly set sw=3 sometimes. need new indenting sleuth
"Plug 'tpope/vim-sleuth'

Plug 'rhysd/reply.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'rhysd/conflict-marker.vim'


"Languages
Plug 'cespare/vim-toml'
Plug 'neovimhaskell/haskell-vim'
"Plug 'chrisbra/csv.vim'


Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Plug 'JuliaLang/julia-vim'
let g:default_julia_version = "devel"
au FileType julia set ts=4 sw=4 sts=4 et

Plug 'kdheepak/JuliaFormatter.vim'
let g:JuliaFormatter_options = {
        \ 'indent'                    : 4,
        \ 'margin'                    : 92,
        \ 'always_for_in'             : v:true,
        \ 'whitespace_typedefs'       : v:false,
        \ 'whitespace_ops_in_indices' : v:true,
        \ }

Plug 'ap/vim-css-color'
au BufNewFile,BufRead *.js,*.html,*.css set ts=2 sts=2 sw=2 et

"Colors
Plug 'mtglsk/wikipedia.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nielsmadan/harlequin'


"Completion
" Need new completion plugins
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
set clipboard=unnamedplus

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



