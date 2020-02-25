install-brew:
	bash -c "brew/install.sh"
	brew bundle --file=./brew/Brewfile

init:
	git submodule update --init --recursive

install-zsh:
	stow zsh -t ~

install-tmux:
	stow tmux -t ~

install-tig:
	stow tig -t ~

install-git:
	stow git -t ~

install-alacritty:
	stow alacritty -t ~

install-vim:
	stow vim -t ~

install-scripts:
	sudo cp -a usr/local/bin/. /usr/local/bin/