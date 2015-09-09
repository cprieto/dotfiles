function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	set --local NVM_VERSION (nvm current)

	if test -n "$VIRTUAL_ENV" -o $NVM_VERSION != "none"
		echo -n -s (set_color white) "[" (set_color normal)
	end

	if test $NVM_VERSION != "none"
		echo -n -s (set_color white) $NVM_VERSION
		if set -q VIRTUAL_ENV
			echo -n -s (set_color blue) ":"
		end if
	end

	if set -q VIRTUAL_ENV
		echo -n -s (set_color white) (basename "$VIRTUAL_ENV") (set_color normal)
	end

	if test -n "$VIRTUAL_ENV" -o $NVM_VERSION != "none"
		echo -n -s (set_color white) "]" (set_color normal) " "
	end

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
