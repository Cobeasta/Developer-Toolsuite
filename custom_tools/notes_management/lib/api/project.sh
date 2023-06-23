#!/usr/bin/env bash

# called to update notes on a specific project
# Usage: notes project MYAC-123 opens editor for notes on that project
# Arguments: 
# -l --list list all projects
# -h --help help with command



function notes_project_help() {
	echo "Notes Project help TODO"
	exit 0
}
function notes_project_list() {
	ls -I "Ideas" "$_NOTES_FOLDER"
	exit 0
}
function notes_project_all() {
	exit 0
	
}
function notes_project() {	

	# parse options
	
	VALID_PROJECT_ARGS=$(getopt -o hla --long help,list,all -- "$@")
	if [[ $? -ne 0 ]]; then
		exit 1;
	fi

	eval set -- "$VALID_PROJECT_ARGS"
	while [ : ]; do
		case "$1" in
			-h | --help)
				shift
				notes_project_help $@
				break
				;;
			-l | --list)
				shift
				notes_project_list $@
				break
				;;
			-a | --all)
				shift
				notes_project_all $@
				break
				;;
			--) shift;
				break
				;;
		esac
	done
			
	local project_name=${1}
	
	mkdir -p "$_NOTES_FOLDER/$project_name" # init directory for project if not exists
	editor "$_NOTES_FOLDER/$project_name/notes.md"

	return 0
}

