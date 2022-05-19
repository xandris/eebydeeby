DESTDIR =
prefix =
sysconfdir = $(prefix)/etc
sbindir = $(prefix)/sbin
libdir = $(prefix)/lib

INSTALL = install
INSTALL_PROGRAM = $(INSTALL) -m 754
INSTALL_DATA = $(INSTALL) -m 644

.PHONY: all install

all:
	@echo Nothing to do

install:
	$(INSTALL_PROGRAM) -D eebydeeby ebdb-kernel --target-directory '$(DESTDIR)$(sbindir)'
	$(INSTALL_PROGRAM) -D kernel/postinst.d/*   --target-directory '$(DESTDIR)$(sysconfdir)/kernel/postinst.d'
	$(INSTALL_DATA)    -D systemd/*             --target-directory '$(DESTDIR)$(libdir)/systemd/system'
