#!/bin/bash
# ----------- Install oh my zsh ---------------
rm -rf ~/.oh-my-zsh
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# set theme to risto
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="aphrodite"/' ~/.zshrc
source ~/.zshrc

