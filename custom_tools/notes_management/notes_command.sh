#!/bin/bash

# Entry point for notes tool
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/lib/main.sh

main $@

