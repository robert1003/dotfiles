# Necessities

* get packages
```
sudo apt install tmux wget vim zsh htop`
```

## git

```
git config --global user.email "robert881003@gmail.com"
git config --global user.name "robert1003"
git config --global core.editor vim
```

## vim

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

## zsh

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
  * `. ~/.zshrc` to update change

## tmux

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

# Optionals

## nvm

* setup Node Version Manager: https://github.com/nvm-sh/nvm
```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
command -v nvm # verify install
```

## jupyter notebook

* install packages
```
pip install jupyterthemes
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
```

* set themes
```
jt -t gruvboxl -fs 95 -tfs 11 -nfs 115 -cellw 88% -T
```

* choose packages
http://localhost:8888/nbextensions/?nbextension=codefolding/main (inside jupyter notebook)
https://medium.com/@maxtingle/10-jupyter-notebook-extensions-making-my-lyfe-easier-f40139a334ce
