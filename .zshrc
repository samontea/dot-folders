# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ "$FIRSTLOAD" != "LOADED" ];
then
fi

[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# check os
case `uname` in
	Darwin)
		if [ "$FIRSTLOAD" != "LOADED" ];
		then
			source /usr/local/opt/antidote/share/antidote/antidote.zsh
		fi

		# brew alias
        alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
		# turn colors on
		alias ls="ls -G"
        alias tree="tree -C"
		;;
	Linux)
		;;
esac

if [ "$FIRSTLOAD" != "LOADED" ];
then
	source ~/.antigenrc
	antidote load
fi

FIRSTLOAD="LOADED"

alias zshrc="source ~/.zshrc"

# Load local files
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export GPG_TTY=$(tty)

## allow for local overrides with a .profile file
source $HOME/.profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
