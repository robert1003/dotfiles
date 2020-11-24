# Steps

* get packages
```
sudo apt install tmux wget vim zsh htop`
```

* setup vim-plug: https://github.com/junegunn/vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* setup vim
```
cp .vimrc ~/.vimrc
open vim and type :PlugInstall
```

* setup zsh & oh-my-zsh: https://github.com/ohmyzsh/ohmyzsh
```
chsh -s /bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* setup p10k: https://github.com/romkatv/powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

* modify ~/.zshrc
  * add `export TERM="xterm-256color"` under `export ZSH=...`
  * change `ZSH_THEME` to `ZSH_THEME="powerlevel10k/powerlevel10k"`

* setup tmux & tmux plugin manager: https://github.com/tmux-plugins/tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
```

* Install tmux plugins
```
tmux
Prefix-I
```

* Done! Start to work now!
