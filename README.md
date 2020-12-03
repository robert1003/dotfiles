# Necessities

* get packages
```
sudo apt install tmux wget vim zsh htop make gcc g++
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

## pyenv

* Install
```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
# set the following in zshrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
```

* Install related package
```
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
# Alternative of libreadline-dev:
sudo apt install libedit-dev
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
