source $HOME/.antigen.zsh
source $HOME/.antigenrc

# check os
case `uname` in
	Darwin)
		# turn colors on
		alias ls="ls -G"
        alias tree="tree -C"
		;;
	Linux)
		;;
esac

# open a file in emacs client
ec() {
	 emacsclient -c --alternate-editor= $@ >/dev/null 2>&1 &
}

alias zshrc="source ~/.zshrc"

## allow for local overrides with a .profile file
source $HOME/.profile
