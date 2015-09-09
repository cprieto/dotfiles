source ~/.config/fish/nvm-wrapper/nvm.fish
rvm default
set -x DOCKER_HOST tcp://ubuntu-server:2375

eval (python -m virtualfish)
