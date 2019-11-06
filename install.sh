#!/bin/bash

echo "Preparing to install packages..."

apt-get update

echo "Installing..."

apt-get install i3 i3-wm i3status i3blocks i3lock gedit dmenu lxappearance thunar pavucontrol rofi xbacklight compton brightness-controller acpi sysstat arc-theme fonts-powerline rxvt-unicode zsh tilix vim maim xclip feh arandr

echo "Pacotes instalados com sucesso!"
