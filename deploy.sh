#!/bin/bash
FILES=(
bash_local
bash_aliases
bash_functions
tmux.conf.local
gitconfig
gitignore
inputrc
ideavimrc
pylintrc
)

for file in "${FILES[@]}"
do
  echo Linking "$file" to $HOME
  ln -sf $(pwd)/$file ~/.$file
done

DIRS=(
powerline-shell
)

for dir in "${DIRS[@]}"
do
  echo Linking "$dir" to $HOME/.config
  ln -sf $(pwd)/$dir ~/.config/$dir
done
