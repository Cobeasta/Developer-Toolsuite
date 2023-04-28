
# add git cli completion

curl -fo ~/git-completion.d/git/git-completion.bash --create-dirs \
	https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# install docker cli completion
curl -fo ~/git-completion.d/docker/docker-completion.sh --create-dirs \
		https://raw.githubusercontent.com/docker/cli/master/contrib/completion/bash/docker

# install vim plug
curl -fo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
