sudo apt install zsh alacritty tmux git curl -y

#Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install autosuggestions and syntax highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting


cp -f .zshrc ~/.zshrc

#change default shell to zsh
chsh -s $(which zsh)

#create config folder
if [ ! -d ~/.config]; then
    mkdir ~/.config
fi

#copy config files
cp -f starship.toml ~/.config/starship.toml&
cp -rf alacritty ~/.config/alacritty&
cp -f .tmux.conf ~/.tmux.conf&


