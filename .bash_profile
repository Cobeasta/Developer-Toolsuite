


# Load Angular CLI autocompletion.
export EDITOR="/c/ProgramData/chocolatey/bin/hx"
export CDPATH=.:~/development
export PATH=$PATH:/~/binaries
export PATH=$PATH:/c/Program\ Files/dotnet
export PATH=$PATH:/c/Program\ Files/Docker/Docker/resources/bin
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
elif [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
	. /opt/local/etc/profile.d/bash_completion.sh
fi

complete -o filenames -o nospace -o bashdefault -F _comp_cd cd

source "$( cd . "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"/custom_tools/cdbd/lib/cdbd.sh