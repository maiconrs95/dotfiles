#!/bin/sh

source colors.sh

# .bash_profile ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "• bash_profile configuration"

if [ -f "$HOME/.bash_profile" ]; then
    msg_update ".bash_profile"
    rm ~/.bash_profile
else
    msg_install ".bash_profile"
fi

sudo ln -s $DOTFILES/config/.bash_profile ~/.bash_profile
msg_checking ".bash_profile"

# .gitconfig :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "• git / github configuration"

if [ -f "$HOME/.gitconfig" ]; then
    msg_update ".gitconfig"
    rm ~/.gitconfig
else
    msg_install ".gitconfig"
fi

sudo ln -s $DOTFILES/config/.gitconfig ~/.gitconfig
msg_checking ". "

read -p "  - What is your Git user.name? " git_name
git config --global user.name $git_name

read -p "  - What is your Git user.email? " git_email
git config --global user.email $git_email

read -p " - What is your Git core.editor? " git_editor
git config --global core.editor $git_editor

echo ""