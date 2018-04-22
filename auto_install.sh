bash $HOME/configuration/install_zsh.sh
echo 'source $HOME/configuration/add_path.sh' >> $HOME/.zshrc
echo 'source $HOME/configuration/add_path.sh' >> $HOME/.bashrc
cp $HOME/configuration/aphrodite.zsh-theme $HOME/.oh-my-zsh/themes/
source $HOME/.bashrc
echo 'Done!'

