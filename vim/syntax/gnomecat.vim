" Vim syntax file
" Language: gnomecat (gnome-catgen *.category)
" Maintainer: Kevin MacMartin (prurigro@gmail.com)
" Latest Revision: 1 July 2014

" XDG Desktop File
syn match gcDesktop '\ *[^\ #].*\.desktop\ *$'
hi def link gcDesktop Statement

" Comments
syn match gcComment "^\ *#.*$"
hi def link gcComment Comment
