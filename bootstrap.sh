#!/usr/bin/env bash

cd "$(dirname "#${BASH_SOURCE}")";

git pull origin master;

function getWithIt(){
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude ".gitconfig" \
        --exclude ".gitignore" \
        --exclude "perfs" \
        --exclude ".function" \
        --exclude ".inputrc" \
        --exclude ".gvimrc" \
        --exclude ".osx" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE-MIT.txt" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

if ["$1" == "--force" -o "$1" == "-f"]; then
    getWithIt;
else
    read -p "This may overwrite all the shit you have currently in your home directory. Are you sure? (y/n)" -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        getWithIt;
    fi;
fi;
unset getWithIt;