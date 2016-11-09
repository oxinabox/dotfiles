shopt -s expand_aliases


alias julia="julia --color=yes"
alias julia_test="julia --depwarn=no"
alias julia_prod="julia --depwarn=no --optimize=3"

#alias jllint="julia --depwarn=no -e \"using Lint; display(lintfile(ARGS[1]))\""
alias jllint="julia --depwarn=no -e \"using Lint; display( isfile(ARGS[1]) ? lintfile(ARGS[1]) : lintpkg(ARGS[1]))\""


alias less="less -R"
alias ag-less='ag --pager="less -R"'


#alias vim=nvim
