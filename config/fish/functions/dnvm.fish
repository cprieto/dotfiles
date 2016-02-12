# Based in RVM Fish (https://rvm.io/integration/fish)
function dnvm --description='DotNet Version Manager'
    set --local env_file (mktemp -t dnvm.fish)
    bash -c 'source ~/.dnx/dnvm/dnvm.sh; dnvm "$@"; status=$?; env > "$0"; exit $status' $env_file $argv

    set -l new_path (grep '^PATH=' $env_file | sed '/^PATH=/s/:/" "/g; s/^/set -xg /; s/=/ "/; s/$/" ;/; s/(//; s/)//')
    eval $new_path

    rm -f $env_file
end
