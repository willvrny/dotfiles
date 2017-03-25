configure-brew:
	cd brew && chmod +x install.sh && ./install.sh

keybase-login:
	keybase login

setup-home-directory:
	cp home/.* $$HOME/

clone-github-repos:
	cd git && chmod +x clone-github-repos.sh && ./clone-github-repos.sh

configure-zsh-theme:
	cp zsh/robbyrussell.zsh-theme $$HOME/.oh-my-zsh/themes
