# System configuration using neovim and oh-my-zsh

### Repo setup reference
https://news.ycombinator.com/item?id=11071754

## Tracking of . files
Tracking . files using github:
```shell
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```
You should add the **alias** line to your .zshrc file.

`~/.myconf` is the directory set as the git bare repository.  Any file within your home folder can now be tracked with normal commands like:
```shell
config status
config add .zshrc
config commit -m "adding .zshrc"
config add .config/nvim/init.vim
config commit -m "adding init.vim"
config push origin master
```

## Oh-my-zsh Install
Repo for oh-my-zsh can be found here. https://github.com/robbyrussell/oh-my-zsh

Install with the following command via Curl

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Once this is installed we want to switch to the agnoster theme because it's fancy!

In your .zshrc file change your ZSH_THEME.

`ZSH_THEME="agnoster"`

_Note: It's likely this will be broken on your mac without the installation of the patched [Powerline Fonts](https://github.com/powerline/fonts)_

To install the fonts do the following
```shell
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

## Neovim Install

## 
