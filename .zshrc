# check os
case `uname` in
	Darwin)
		# Path to your oh-my-zsh configuration.
		ZSH=~/data/oh-my-zsh

		#COWDIR=/usr/local/Cellar/cowsay/3.04/share/cows/;
		;;
	Linux)
		# Path to your oh-my-zsh configuration.
		ZSH=/data/oh-my-zsh

		# where be the cows
		#COWDIR=/usr/share/cows/;
		;;
esac

# get a nummer
#COWNUM=$(($RANDOM % $(ls $COWDIR | wc -l) + 1));
# choose teh cow
#COWFILE=$(ls $COWDIR | sed -n ''$COWNUM'p');
# teh cow says
#fortune | cowsay -f $COWFILE;

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git elixir)

# Import oh my zsh
source $ZSH/oh-my-zsh.sh

# open a file in emacs client
ec() {
	 emacsclient -c --alternate-editor= $@ >/dev/null 2>&1 &
}

alias zshrc="source ~/.zshrc"
