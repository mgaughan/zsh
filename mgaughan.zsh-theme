PROMPT='
$FG[014]%m: $FG[160]$(get_pwd)$(put_spacing)$FG[245]$(get_date)
$(git_prompt_info)$reset_color→'

function get_pwd() {
	echo "${PWD/$HOME/~}"
}

function get_date(){
	echo "%D{%m.%d.%y}"
}

function put_spacing() {
	local termwidth
	(( termwidth = ${COLUMNS} - 4 - ${#HOST} - ${#$(get_pwd)}))
	local spacing=""
	for i in {1..$termwidth}; do
	    spacing="${spacing} "
	done
	echo $spacing
}

function git_prompt_info() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "$(parse_git_dirty)$(current_branch) "
}


ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"