function __nvm_prompt --description "Write the current NVM version"
    if count $argv > /dev/null
        set_color $argv
    else
        set_color normal
    end

    set -l NVM_VERSION (nvm current)

    if test $NVM_VERSION != "none"
        echo -n -s "[🚀  " $NVM_VERSION "]"
    end

    set_color normal
end

function __virtual_env_prompt --description "Write the current Virtual Env"
    if count $argv > /dev/null
        set_color $argv
    else
        set_color normal
    end

    if set -q VIRTUAL_ENV
      echo -n -s "[🐍  " (basename "$VIRTUAL_ENV") "]"
    end

    set_color normal
end

function __docker_prompt --description "Write the number of running containers"
  if count $argv > /dev/null
    set_color $argv
  else
    set_color normal
  end

  set -l docker_containers (docker ps -q -f status=running ^/dev/null)
  if math "$status!=0" > /dev/null
    return
  end

  set -l number_containers (count $docker_containers)
  if math "$number_containers>0" > /dev/null
    echo -s -n "[🐳  " (count docker_containers) " running]"
  end

  set_color normal
end

function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

  printf '%s' (__nvm_prompt $fish_color_comment)
  printf '%s' (__virtual_env_prompt $fish_color_comment)
  printf '%s' (__docker_prompt $fish_color_comment)
  printf ' '

	# PWD
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	set_color normal

	printf '%s ' (__fish_git_prompt)

	if not test $last_status -eq 0
	 set_color $fish_color_error
	end

	echo -n '$ '

	set_color normal
end
