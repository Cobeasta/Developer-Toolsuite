source ~/.bash_aliases
# Common paths for Windows
if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # 64 bits Windows NT platform
  export PATH=$PATH:/~/binaries
  export PATH=$PATH:/c/Program\ Files/dotnet
  export PATH=$PATH:/c/Program\ Files/Docker/Docker/resources/bin
  export PATH=$PATH:/c/Program\ Files/Common\ Files/Oracle/Java/javapath
  export PATH=$PATH:/c/ProgramData/chocolatey/bin   
fi


if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi
# Set locale
export LC_ALL="en_US.UTF-8"