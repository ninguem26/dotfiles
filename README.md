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

## Other tips

- Media control can present some problems if the output device code is diferent from the one in i3/config. If that happens, just change the code in it's respective lines.
