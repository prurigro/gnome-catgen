# Gnome-Catgen #

A Gnome 3.12 application-overview folder configuration tool

## CONFIG ##

To configure the folders gnome-catget will generate when `gnome-catgen set` is run:

1. Create a folder @ `~/.local/share/applications-categories`.
2. Create a file in that folder with the name of the category you want it to represent and the **.category** extension.
3. Place the filename of the .desktop file of an applicaton you'd like in the folder on a single line.
4. Repeat step **2** for more categories and step **3** for more applications until things are how you want them.
5. Run `gnome-catgen set` to configure your settings, then `gnome-catgen get` to check the results.
6. To remove all folders without having to change your config, run `gnome-catgen clear`.

## NOTES ON CONFIG ##

* Lines where the first non-space is a # are ignored
* Lines listing programs with desktop files that aren't in '/usr/share/applications' or '~/.local/share/applications' won't be added
* Blank lines will be skipped

## COMMANDS ##

* **gnome-catgen get**: Returns the list of folder categories followed by a list of the applications in each, then a list of programs without folders.
* **gnome-catgen get-folders**: Returns the list of  folder categories.
* **gnome-catgen get-apps**: Returns the list of applications in each folder category.
* **gnome-catgen get-remaining**: Returns the list of programs that aren't currently in folders.
* **gnome-catgen set**: Configures the folder categories and their included applications as defined.
* **gnome-catgen choose-remaining**: Prompts for a category name for each remaining application without a category folder.
* **gnome-catgen clear**: Removes all application lists currently set and defines the list of folder categories as blank.

## CREDITS ##

Written by prurigro:

* [GitHub Projects](https://github.com/prurigro)
* [Arch Linux AUR Packages](https://aur.archlinux.org/packages/?SeB=m&K=prurigro)
