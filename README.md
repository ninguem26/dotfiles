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

Maybe light won't work since it need permission to access some files. If that happens, give the permission needed with:

> ~$ chmod 4755 /usr/bin/light 

#### If the screen turn black when the light is at the minimum value

In this case, just execute `light -N 5` to define the minimum light value as 5. You can choose any value if you want. 

## Other tips

- Media control can present some problems if the output device code is diferent from the one in i3/config. If that happens, just change the code in it's respective lines.
