configure-brew:
	cd brew && chmod +x install.sh && ./install.sh

keybase-login:
	keybase login

setup-home-directory:
	cp home/.gitconfig ~/.gitconfig && \
	cp home/.zshrc ~/.zshrc && \
	source ~/.zshrc

clone-github-repos:
	cd git && chmod +x clone-github-repos.sh && ./clone-github-repos.sh
