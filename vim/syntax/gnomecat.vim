" Vim syntax file
" Language: gnomecat (gnome-catgen *.category)
" Maintainer: Kevin MacMartin (prurigro@gmail.com)
" Latest Revision: 1 July 2014

" XDG Desktop File
syn match gcDesktop '\ *[^\ #]*\.desktop' contains=gcDesktopName,gcDesktopExtension
syn match gcDesktopName '^.*\.desktop' contained contains=gcDesktopExtension
syn match gcDesktopExtension '\.desktop' contained
hi def link gcDesktopName String
hi def link gcDesktopExtension Comment

" Comments
syn match gcComment "^\ *#.*$"
hi def link gcComment Comment
