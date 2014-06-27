# gnome-catgen #

A Gnome 3.12 Folder Category Configuration Tool

## Configuration ##

### Interactive Category Selection ###

While configuration is primarily done by hand, running `gnome-catgen -c` or `gnome-catgen --choose-remaining` will begin iterating through the list of applications that aren't currently in a folder and let you choose where you would like them to go.

In this mode you can do the following:

* Enter the name of a folder category to add the current application.
* Enter a blank line to skip the current application.
* Press ctrl-c to quit at any time.

Once all the applications without a folder have been cycled through, **gnome-catgen** will offer the option of applying the changes you just made to your config. If you choose not to apply the changes at this point, you can do so later by running: `gnome-catgen -s`.

### Configure Category Files ###

To configure the folder category for each application, (if necessary) create and browse to: `~/.local/share/applications-categories`

1. In here, create files with the `.category` extension and the name of the category they will represent.
2. Inside `.category` files, one application's .desktop filename can be added to each line, to add the application to that folder category.
3. Once everything is configured how you'd like it, run: `gnome-catgen set` to apply your configuration.

### Editing Category Files ###

* Blank lines are ignored.
* Lines where the first non-whitespace character is a # considered commented and are ignored.

## Commands ##

### Read ###

* `gnome-catgen -f` | `--get-folders`: list current folders
* `gnome-catgen -a` | `--get-apps`: list current apps in each folder
* `gnome-catgen -r` | `--get-remaining`: list apps without a folder
* `gnome-catgen -g` | `--get`: list all of the above

### Write ###

* `gnome-catgen -s` | `--set`: apply current folder configuration
* `gnome-catgen -x` | `--clear`: remove applied folder configuration
* `gnome-catgen -c` | `--choose-remaining`: interactively assign folders to apps without

### Info ###

* `gnome-catgen -h` | `--help`: display this help

## CREDITS ##

Written by Kevin MacMartin:

* [GitHub Projects](https://github.com/prurigro)
* [Arch Linux AUR Packages](https://aur.archlinux.org/packages/?SeB=m&K=prurigro)

## LICENSE ##

Licensed under the [MIT license](http://opensource.org/licenses/MIT).
