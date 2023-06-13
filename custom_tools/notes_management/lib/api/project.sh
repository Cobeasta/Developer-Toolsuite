#!/usr/bin/env bash

# called to update notes on a specific project
# Usage: notes project MYAC-123 opens editor for notes on that project

function notes_project() {
	local project_name=${1}
	
	mkdir -p "$_NOTES_FOLDER/$project_name" # init directory for project if not exists
	vim "$_NOTES_FOLDER/$project_name/notes.md"

	return 0
}
