# Dotfiles
My i3wm dotfiles

## Installation

To configure i3wm you just need to run the `install.sh` file in the command line:
> ~$ ./install.sh

This will install all the libs necessary to make the i3 environment work.

### Dunst

For notifications to work, install the Dunst notification daemon, following the [docs](https://github.com/dunst-project/dunst).

### Light

For screen back light control, install [Light](http://haikarainen.github.io/light/).

#### If permission is needed

Maybe Light won't work since it need permission to access some files. If that happens, give the permission needed with:

> ~$ chmod 4755 /usr/bin/light

### Touchpad

*Warning: this only works in xorg configuration with libinput.*

For touchpad tapping and natural scrolling to work, edit the touchpad catchall configuration in libinput config file at `/usr/share/X11/xorg.conf.d/40-libinput.conf` to the code bellow:

> Section "InputClass"  
> &nbsp;&nbsp;&nbsp;&nbsp;Identifier "libinput touchpad catchall"  
> &nbsp;&nbsp;&nbsp;&nbsp;MatchIsTouchpad "on"  
> &nbsp;&nbsp;&nbsp;&nbsp;MatchDevicePath "/dev/input/event*"  
> &nbsp;&nbsp;&nbsp;&nbsp;Driver "libinput"  
>	&nbsp;&nbsp;&nbsp;&nbsp;Option "Tapping" "on"  
>	&nbsp;&nbsp;&nbsp;&nbsp;Option "NaturalScrolling" "True"  
> EndSection

### Powerline fonts

For set Powerline fonts that can be used in [Powerline10k](https://github.com/romkatv/powerlevel10k), just follow the installation guide in the link.

#### Terminess for Powerline fonts (Terminus fonts)

Powerline Terminus fonts derivates (Terminess) are build in a diferent format (.pcf/bitmap) that the system (Ubuntu/Debian) keep locked by default. To unlock these fonts run the command line:

> ~$ sudo unlink /etc/fonts/conf.d/70-no-bitmaps.conf

### Polybar

The configuration is set to Polybar as default. For Polybar installation, follow the instructions [here](https://github.com/polybar/polybar).

### URxvt

For URxvt, the style is set in .Xdefault, so any changes made need to be in this file.

## Other tips

- Media control can present some problems if the output device code is diferent from the one in i3/config. If that happens, just change the code in it's respective lines.

## Other dependencies

- [Spicetify](https://github.com/khanhas/Spicetify)
- [pywal](https://github.com/dylanaraps/pywal)
- [WPGTK](https://github.com/deviantfero/wpgtk)
- [lightdm-gtk-greeter](https://www.archlinux.org/packages/extra/x86_64/lightdm-gtk-greeter/)
- [i3-gaps](https://github.com/Airblader/i3)