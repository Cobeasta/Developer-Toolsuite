#!/usr/bin/env bash

# called to update notes on a specific project
# Usage: notes project MYAC-123 opens editor for notes on that project
# Arguments: 
#
# notes project list (list all projects)
# notes project create/update (create or update folder & markdown for project)
# notes project open (open file explorer or equivalent in that directory)



function notes_project_help() {
# display help
	echo "Management tool for project notes"
	exit 0
}
function notes_project_list() {
	ls -I "Ideas" "$_NOTES_FOLDER"
	exit 0
}
function notes_project_all() {
	exit 0
	
}
function notes_project_create() {	
	local project_name=${1}
	# todo add help
	
	mkdir -p "$_NOTES_FOLDER/$project_name" # init directory for project if not exists
	"${EDITOR}" "$_NOTES_FOLDER/$project_name/notes.md"

	return 0
}
function notes_project_open() {
	local project_name=${1}
	# todo add help	
	
	if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
	    # 64 bits Windows NT platform
		start ${_NOTES_FOLDER}/$project_name
	fi
}
function notes_project() {	

	declare -A -x project_command_table=(
		['create']="notes_project_create"
		['update']="notes_project_create"
		['list']="notes_project_list"
		['help']="notes_project_help"
		['open']="notes_project_open"
	)
	local commands="${!project_command_table[@]}"
	
	# default help if needed
	local msg="usage: notes project [$commands]"
	
	if [[ $# < 1 ]]; then exit_with_help "$msg"; fi
	
	
	local command=${1}; shift
	local fn_name=${project_command_table[$command]}

#	if [[ $fn_name == '' ]]; then exit_with_help "$msg"; fi
	if $fn_name $@; then return 0; else return 1; fi
		
	# parse options
	
#	VALID_PROJECT_ARGS=$(getopt -o hla --long help,list,all -- "$@")
#	if [[ $? -ne 0 ]]; then
#		exit 1;
#	fi

#	eval set -- "$VALID_PROJECT_ARGS"
#	while [ : ]; do
#		case "$1" in
#			-h | --help)
#				shift
#				notes_project_help $@
#				break
#				;;
	# 		-l | --list)
	# 			shift
	# 			notes_project_list $@
	# 			break
	# 			;;
	# 		-a | --all)
	# 			shift
	# 			notes_project_all $@
	# 			break
	# 			;;
	# 		--) shift;
	# 			break
	# 			;;
	# 	esac
	# done
			
}

