if [ "$FIRSTLOAD" != "LOADED" ];
then
   source $HOME/.antigen.zsh
   source $HOME/.antigenrc
fi

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

FIRSTLOAD="LOADED"

alias zshrc="source ~/.zshrc"
