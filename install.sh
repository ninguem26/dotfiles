#!/bin/bash

echo "Preparing to install packages..."

apt-get update

echo "Adding repository PPAs"

sudo add-apt-repository ppa:apandada1/brightness-controller

echo "Installing..."

apt-get install i3 i3-wm i3status i3blocks i3lock gedit dmenu lxappearance thunar pavucontrol rofi xbacklight compton brightness-controller acpi sysstat arc-theme fonts-powerline rxvt-unicode zsh tilix vim maim xclip feh arandr ranger w3m

echo "Pacotes instalados com sucesso!"

echo "Configurando plugins do zsh"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
