eval (python -m virtualfish)
set -x JAVA_HOME (/usr/libexec/java_home)

set -x LESS_TERMCAP_mb (printf "\e[01;31m")  
set -x LESS_TERMCAP_md (printf "\e[01;31m")  
set -x LESS_TERMCAP_me (printf "\e[0m")  
set -x LESS_TERMCAP_se (printf "\e[0m")  
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")  
set -x LESS_TERMCAP_ue (printf "\e[0m")  
set -x LESS_TERMCAP_us (printf "\e[01;32m")

# Check if fundle exists, if not, install it
if not functions -q fundle; eval (curl -sFL https://git.io/fundle-install); end

# Fundle plugins
fundle plugin 'edc/bass'
fundle plugin 'tuvistavie/oh-my-fish-core'
#fundle plugin 'oh-my-fish/theme-chain'
#fundle plugin 'oh-my-fish/theme-default'
#fundle plugin 'oh-my-fish/theme-gnuykeaj'
fundle plugin 'oh-my-fish/theme-clearance'

fundle init

# NVM configuration
bass source ~/.nvm/nvm.sh

# RVM configuration
bass source ~/.rvm/scripts/rvm

alias ll "ls -lhs"

set -gx PATH /usr/local/sbin $PATH
