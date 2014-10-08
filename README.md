# gnome-catgen #

A Gnome 3.12 and 3.14 Folder Category Configuration Tool

## Installation ##

The package can be installed by running the command: `make install`, and can later be removed with: `make uninstall`.

The following environment variables can be set to configure the location of various things:

* `$DESTDIR`: The base under root (default: **/**)
* `$PREFIX`: The prefix that will be used under other folders (default: **/usr**)
* `$MANDIR`: The folder (starting at **$PREFIX**) to install the man page.
* `$VIMDIR`: The folder (starting at **$PREFIX**) to install the Vim filetype config.

## Configuration ##

### Interactive Category Selection ###

While configuration is done primarily by hand, it's possible to iterate through the list of applications that aren't already in a folder category and select a category for each by running: 'gnome-catgen -c'

In this mode you can do the following:

* Enter the name of a folder category to add the current application.
* Enter a blank line to skip the current application.
* Press ctrl-c to quit at any time.

Once all the applications without a folder have been cycled through, gnome-catgen will offer to apply the updated configuration. Choosing not to apply the changes at this time will simply exit the program, and the changes can then be applied later by running: gnome-catgen -s.

### Configure Category Files ###

You can manually configure a given folder category by running: gnome-catgen -e "Category Name"

This will create (if it doesn't already exist) and open (with the editor set by **$EDITOR**, or **vi** if nothing is set) the **.category** file in **~/.local/share/applications-categories** for the provided category name. In this file, you can now add one application's '.desktop' filename per line. After all the desired applications have been added, you can then run: gnome-catgen -s to apply your configuration.

#### Notes on Category Files ####

* Blank lines are ignored.
* Lines where the first non-whitespace character is a # considered commented and are ignored.

## Commands ##

### Read ###

* `gnome-catgen -f` | `--get-folders`: list current folders
* `gnome-catgen -a` | `--get-apps`: list current apps in each folder category
* `gnome-catgen -r` | `--get-remaining`: list apps without a folder category
* `gnome-catgen -g` | `--get`: list all of the above

### Edit ###

* `gnome-catgen -c` | `--choose-remaining`: assign folder categories to unassigned apps
* `gnome-catgen -e {CAT}` | `--edit-category {CAT}`: edit the _.category_ file of the folder category for **{CAT}**.

### Write ###

* `gnome-catgen -s` | `--set`: apply current folder configuration
* `gnome-catgen -x` | `--clear`: remove applied folder configuration

### Information ###

* `gnome-catgen -h` | `--help`: display this help

## Notes ##

* If there are still uncategorized apps and `gnome-catgen -c` doesn't list them, there may be something unexpected in **~/.local/share/applications-categories**, and an easy fix is to delete/backup and start again.
* It may be necessary to delete/backup **~/.local/share/applications-categories** when upgrading from Gnome **3.12** to **3.14** for reasons related to the note above.

## CREDITS ##

Written by Kevin MacMartin:

* [GitHub Projects](https://github.com/prurigro)
* [Arch Linux AUR Packages](https://aur.archlinux.org/packages/?SeB=m&K=prurigro)

### Contributors ###

* Florian Rommel ([utivis](https://github.com/utivis))
* Martin Lukeš ([meridius](https://github.com/meridius))

## LICENSE ##

Released under the [MIT license](http://opensource.org/licenses/MIT).
