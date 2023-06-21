#~/usr/bin/env bash
_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $_ROOT/config.sh
source $_ROOT/utility.sh
source $_ROOT/api/project.sh


function main() {
#	init_dir './data' # Initialize any directories
	mkdir -p "$_NOTES_FOLDER"
	
	declare -A -x command_table=(
		['project']="notes_project" # tool for maintaining notes on projects
		['idea']="notes_ideas" # tool for keeping track of new ideas
	)

	# Parse commands into simple-indexed array for help messages
	local commands="${!command_table[@]}"
	local msg="usage: notes [ $commands ]" # typical help message
	if [[ $# < 1 ]]; then exi_with_help "$msg"; fi

	# load first argument as command then shift command off stack
	local command=${1}; shift
	local fn_name=${command_table[$command]}

	# call command if exists
	if [[ $fn_name == '' ]]; then exit_with_help "$msg"; fi
	if $fn_name $@; then return 0; else return 1; fi

}
