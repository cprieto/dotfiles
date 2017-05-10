autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' max-exports 2
zstyle ':vcs_info:git*' formats '· [%b]' 'x%R'
zstyle ':vcs_info:git*' actionformats ' %b|%a' 'x%R'

function precmd() {
  vcs_info
}

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo " %F{082}[🐍  $venv]%F"
}

function opam_info() {
  if [[ -n "$OCAML_TOPLEVEL_PATH" ]]; then
    opam_switch=$(opam switch show)
    if [[ $opam_switch != "system" ]]; then
      _opam=$opam_switch
    fi
  else
    _opam=''
  fi
  [[ -n "$_opam" ]] && echo " %F{082}[🐫  $_opam]%F"
}

export VIRTUAL_ENV_DISABLE_PROMPT=1

PROMPT='
$(virtualenv_info)$(opam_info)%F{cyan} %~ %F{242}${vcs_info_msg_0_}
%F{magenta} ❯ %F'
