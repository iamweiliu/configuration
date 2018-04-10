#!/usr/bin/env zsh
# test
# ------------------------------------------------------------------------------
#
# Aphrodite Terminal Theme
#
# Author: Sergei Kolesnikov
# https://github.com/win0err/aphrodite-terminal-theme
#
# ------------------------------------------------------------------------------

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{4}+%F{2}]"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{2}✔]"

aphrodite_get_welcome_symbol() {

	echo -n "%(?..%F{1})"
	local welcome_symbol='$'
	[ $EUID -ne 0 ] || welcome_symbol='#'
	echo -n $welcome_symbol
	echo -n "%(?..%f)"
}

# local aphrodite_get_time="%F{grey}[%*]%f"

aphrodite_get_current_branch() {

	local branch=$(git_current_branch)

	if [ -n "$branch" ]; then
		echo -n $ZSH_THEME_GIT_PROMPT_PREFIX
                echo -n "%F{2}[${branch} "
		echo -n $(parse_git_dirty)
		echo -n $ZSH_THEME_GIT_PROMPT_SUFFIX
	fi
}

aphrodite_get_prompt() {

	# 256-colors check (will be used later): tput colors
	echo -n "%{$reset_color%}%n%f" # User
	echo -n "%{$reset_color%}@%f" # at
	echo -n "%{$reset_color%}%m%f" # Host
	echo -n "%{$reset_color%}:%f" # in 
	echo -n "%{$reset_color%}%~" # Dir
	echo -n "$(aphrodite_get_current_branch)" # Git branch
	echo -n "$(aphrodite_get_welcome_symbol)%{$reset_color%} " # $ or #
}

#echo -n "\n"
export GREP_COLOR='1;31'

PROMPT='$(aphrodite_get_prompt)'
