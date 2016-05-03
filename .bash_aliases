shopt -s expand_aliases

alias pip="/usr/bin/pip"
alias pip-pypy="/usr/local/bin/pip"

alias julia="julia-master --color=yes"
alias julia_test="julia --depwarn=no"

alias jllint="julia -e \"using Lint; lintfile(ARGS[1])\""

alias less="less -R"
alias ag-less='ag --pager="less -R"'
