curl -L git.io/antigen > $HOME/.antigen.zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ${PWD}/.zshrc ${HOME}/.zshrc
ln -s ${PWD}/.antigenrc ${HOME}/.antigenrc
ln -s ${PWD}/.tmux.conf ${HOME}/.tmux.conf
ln -s ${PWD}/.gitconfig ${HOME}/.gitconfig
ln -s ${PWD}/.p10k.zsh ${HOME}/.p10k.zsh
ln -s ${PWD}/dot.gitignore ${HOME}/.gitignore
