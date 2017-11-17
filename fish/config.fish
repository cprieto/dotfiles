if [ -d /usr/local/opt/python/libexec/bin ]
  set -gx PATH /usr/local/opt/python/libexec/bin $PATH
end

if command -sq pip
  if test (pip list --format=legacy | grep virtualfish)
    eval (python -m virtualfish)
  end
end

if [ -e /usr/libexec/java_home ]
    set -x JAVA_HOME (/usr/libexec/java_home)
end

set -x LESS_TERMCAP_mb (printf "\e[01;31m")
set -x LESS_TERMCAP_md (printf "\e[01;31m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")

# Install fisher
if not functions -q fisher
    echo "Installing fisherman for the first time"
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
end

if [ -d ~/.config/env ]
  ev ~/.config/env > /dev/null
end

alias ll "ls -lhs"
if [ -d /usr/local/sbin ]
    set -gx PATH /usr/local/sbin $PATH
end

if [ -d $GOPATH ]
    set -gx PATH $GOPATH/bin $PATH
end

# Erlang and kerl
#if test (command -v kerl)
#    source ~/.kerl/init.fish
#end

if command -sq direnv
    eval (direnv hook fish)
end

if command -sq rbenv
    status --is-interactive; and source (rbenv init -|psub)
end

