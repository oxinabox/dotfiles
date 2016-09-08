shopt -s expand_aliases

alias pip="/usr/bin/pip"
alias pip-pypy="/usr/local/bin/pip"

alias julia="julia-master --color=yes"
alias julia_test="julia --depwarn=no"
alias julia_prod="julia --depwarn=no --optimize=3"

alias jltags="julia /mnt_volume/misc/julia-vim-omnicomplete/truely_excellent_tags/jltag.jl"
alias jllint="julia --depwarn=no -e \"using Lint; lintfile(ARGS[1])\""

alias less="less -R"
alias ag-less='ag --pager="less -R"'


alias vim=nvim
