source ~/.bash_aliases
export PATH=$PATH:/~/binaries
export PATH=$PATH:/c/Program\ Files/dotnet
export PATH=$PATH:/c/Program\ Files/Docker/Docker/resources/bin
export PATH=$PATH:/c/Program\ Files/Common\ Files/Oracle/Java/javapath
export PATH=$PATH:/c/ProgramData/chocolatey/bin

if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi