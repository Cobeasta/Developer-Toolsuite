SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.vim # make vim folder if it does not exist

ln -sf $SCRIPTPATH/vim/vimrc ~/.vim/vimrc # symlink for current vimrc file
ln -sf $SCRIPTPATH/.bash_profile ~/.bash_profile # symlink for bash_profile 
ln -sf $SCRIPTPATH/.bash_aliases ~/.bash_aliases # symlink for bash_aliases