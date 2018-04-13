#!/bin/bash

if ! [ -e $HOME/usr/bin/zsh ]; then
    if ! [ -e $HOME/usr/bin ]; then
      mkdir -p $HOME/usr/bin
    fi
    cd $HOME/Downloads
    # ----------- Download zsh ---------------
    if ! [ -e zsh.tar.gz ]
    then
    wget -O zsh.tar.gz https://sourceforge.net/projects/zsh/files/latest/download
    fi
    
    # ----------- Install zsh ---------------
    if ! [ -e zsh ]
    then
        mkdir zsh
    fi
    tar -xvzf zsh.tar.gz -C zsh --strip-components 1
    cd zsh
    ./configure --prefix=$HOME/usr/
    make
    make install
fi

# ----------- Install oh my zsh ---------------
rm -rf ~/.oh-my-zsh
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# set theme to risto
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="aphrodite"/' ~/.zshrc
echo "source $HOME/scripts/add_path.sh" >> ~/.zshrc
source ~/.zshrc

