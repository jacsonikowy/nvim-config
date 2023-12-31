#!/bin/bash

nvimFolder="$HOME/.config/nvim"
nvimCopy="$HOME/.config/nvimCopy"

if [ -d "$nvimFolder" ];
then
    "$nvimFolder exist.. Making local copy to $nvimCopy and copying from repo to $nvimFolder"
    if [ -d "$nvimCopy" ];
    then
      rm -r $HOME/.config/nvimCopy 
    fi
    mkdir $HOME/.config/nvimCopy
    cp -r $HOME/.config/nvim $HOME/.config/nvimCopy
    rm -r $HOME/.config/nvim
    mkdir $HOME/.config/nvim
    cp -r * $HOME/.config/nvim
else
    "$nvimFolder doesn't exist... Creating one and copying from repo to $nvimFolder"
    mkdir $HOME/.config/nvim
    cp -r * $HOME/.config/nvim
fi


