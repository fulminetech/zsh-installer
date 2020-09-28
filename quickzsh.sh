#Install Git and ZSH
sudo apt install git && sudo apt install zsh -y
#Install OhMyZsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Install auto-suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#Further instructions 
echo [ UPDATE at ~/.zshrc  ]
echo "plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)"
#Change zsh to default
chsh -s $(which zsh)
