# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ "$FIRSTLOAD" != "LOADED" ];
then
   source $HOME/.antigen.zsh
   source $HOME/.antigenrc
fi

[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

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
	 emacsclient -c --alternate-editor= $@
}

FIRSTLOAD="LOADED"

alias zshrc="source ~/.zshrc"

## allow for local overrides with a .profile file
source $HOME/.profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
