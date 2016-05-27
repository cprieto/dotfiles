rvm default

eval (python -m virtualfish)
set -x JAVA_HOME (/usr/libexec/java_home)

function __apply_colorset_if_exists
    set -l current_term (which_term)
    set -l current_dir (dirname (status -f)) 
    if test -e $current_dir/$current_term.colors
        echo "Using terminals colors for " $current_term
        source $current_dir/$current_term.colors
    end
end

set -x LESS_TERMCAP_mb (printf "\e[01;31m")  
set -x LESS_TERMCAP_md (printf "\e[01;31m")  
set -x LESS_TERMCAP_me (printf "\e[0m")  
set -x LESS_TERMCAP_se (printf "\e[0m")  
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")  
set -x LESS_TERMCAP_ue (printf "\e[0m")  
set -x LESS_TERMCAP_us (printf "\e[01;32m")

__apply_colorset_if_exists
functions -e __apply_colorset_if_exists

# Fundle plugins
fundle plugin 'edc/bass'

fundle init

# NVM configuration
bass source ~/.nvm/nvm.sh

# Let's check if docker is running
set -l __docker_machine (docker-machine ls --filter State=Running -f "{{.Name}}")

alias ll "ls -lhs"

set -gx PATH /usr/local/sbin $PATH
