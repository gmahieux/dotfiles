#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -sf $DIR/.zshrc $HOME/.zshrc
ln -sf $DIR/.zprofile $HOME/.zprofile
ln -sf $DIR/.bashrc $HOME/.bashrc
ln -sf $DIR/.bash_profile $HOME/.bash_profile
ln -sf $DIR/.gitconfig $HOME/.gitconfig
ln -sf $DIR/.Xdefaults $HOME/.Xdefaults
ln -sf $DIR/.Xresources $HOME/.Xresources

ln -sf $DIR/.tmux $HOME/.tmux
ln -sf $DIR/.tmux.conf $HOME/.tmux.conf

ln -sf $DIR/.urxvt $HOME/.urxvt

for file in $DIR/config/*; do
	echo "Linking $(basename $file) config file"
	ln -sf $file $HOME/.config/
done

# i3lock script overriding xfce lock in order to be able
# to lock when hibernate/sleep
sudo ln -sf $DIR/lock.sh /usr/local/bin/xflock4
sudo chmod +x /usr/local/bin/xflock4
