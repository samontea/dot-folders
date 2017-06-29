source $HOME/.antigen.zsh
source $HOME/.antigenrc

# open a file in emacs client
ec() {
	 emacsclient -c --alternate-editor= $@ >/dev/null 2>&1 &
}

alias zshrc="source ~/.zshrc"
