# FILES
SCRIPT=gnome-catgen
MAN=$(SCRIPT).1
VIM=gnomecat.vim
# COMMANDS
INSTALL_RX=install -Dm755
INSTALL_RO=install -Dm644
RM=rm -f
RMDIR=rmdir -p
QUIET_TRUE=>/dev/null 2>&1 || true
# LOCATIONS
PREFIX=/usr
BINDIR=$(DESTDIR)$(PREFIX)/bin
MANDIR=$(DESTDIR)$(PREFIX)/share/man/man1
VIMDIR=$(DESTDIR)$(PREFIX)/share/vim/vimfiles

install:
	$(INSTALL_RX) $(SCRIPT) $(BINDIR)/$(SCRIPT)
	$(INSTALL_RO) $(MAN) $(MANDIR)/$(MAN)
	$(INSTALL_RO) vim/ftdetect/$(VIM) $(VIMDIR)/ftdetect/$(VIM)
	$(INSTALL_RO) vim/ftplugin/$(VIM) $(VIMDIR)/ftplugin/$(VIM)
	$(INSTALL_RO) vim/syntax/$(VIM) $(VIMDIR)/syntax/$(VIM)

uninstall:
	$(RM) $(BINDIR)/$(SCRIPT)
	$(RMDIR) $(BINDIR) $(QUIET_TRUE)
	$(RM) $(MANDIR)/$(MAN)
	$(RMDIR) $(MANDIR) $(QUIET_TRUE)
	$(RM) $(VIMDIR)/ftdetect/$(VIM)
	$(RMDIR) $(VIMDIR)/ftdetect $(QUIET_TRUE)
	$(RM) $(VIMDIR)/ftplugin/$(VIM)
	$(RMDIR) $(VIMDIR)/ftplugin $(QUIET_TRUE)
	$(RM) $(VIMDIR)/syntax/$(VIM)
	$(RMDIR) $(VIMDIR)/syntax $(QUIET_TRUE)
