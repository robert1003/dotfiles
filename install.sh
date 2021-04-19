#!/bin/bash
#set -e

# get packages
sudo apt update
DEBIAN_FRONTEND=noninteractive sudo apt install -y tmux wget vim zsh htop make gcc g++ curl openssh-server gdb git sudo silversearcher-ag

# config git
git config --global user.email "robert881003@gmail.com"
git config --global user.name "robert1003"
git config --global core.editor vim

# setup vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
vim -E -s -u ~/.vimrc +PlugInstall +qall

# setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^\(export ZSH=.*\)$/\1\nexport TERM="xterm-256color"/' ~/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# setup tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
tmux start-server && \
    tmux new-session -d && \
    sleep 1 && \
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh && \
    tmux kill-server # ref: https://www.gitmemory.com/issue/tmux-plugins/tpm/6/575975495

# setup pyenv && virtualenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo "export PYENV_ROOT=\"\$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
if command -v pyenv 1>/dev/null 2>&1; then
  eval \"\$(pyenv init -)\"
fi" >> ~/.zshrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python-openssl git libedit-dev

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

# setup python && python packages
pyenv install 3.7.0
pyenv install 3.8.0
pyenv global 3.8.0

## Basic
pip install tqdm joblib

## ML
pip install numpy pandas scipy gpustat
pip install torch torchvision torchaudio # 10.2
#pip3 install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html # 11.1
pip install torchsummary

## jupyter
pip install jupyterthemes
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jt -t gruvboxl -fs 95 -tfs 11 -nfs 115 -cellw 88% -T

zsh
