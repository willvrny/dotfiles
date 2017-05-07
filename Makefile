configure-brew:
	cd brew && chmod +x install.sh && ./install.sh

install-zsh:
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

configure-zsh-theme:
	cp zsh/robbyrussell.zsh-theme $$HOME/.oh-my-zsh/themes
	chsh -s /bin/zsh

keybase-login:
	keybase login

setup-home-directory:
	cp home/.* $$HOME/

clone-github-repos:
	cd git && chmod +x clone-github-repos.sh && ./clone-github-repos.sh