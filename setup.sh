#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

shopt -s dotglob
for file in $DIR/home/*; do
	echo "Linking $(basename $file) dotfile"
	ln -sf $file $HOME/
done
shopt -u dotglob

for file in $DIR/config/*; do
	echo "Linking $(basename $file) config file"
	rm -R $HOME/.config/$(basename $file)
	ln -sf $file $HOME/.config/
done

echo "Copying /etc files"
sudo cp -rf $DIR/etc/* /etc

# override manjaro/i3 blurlock with custom script
for file in $DIR/scripts/*; do
  echo "Linking $(basename $file) script file into /usr/local/bin"
  sudo ln -sf $file /usr/local/bin/
done
