##
## $Id: Makefile.am,v 1.2 2001-09-27 12:00:49 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

H_FILES = bsp.h ../../../shared/include/coverhd.h chain.h tod.h nvram.h \
    pci.h

$(PROJECT_INCLUDE):
	$(mkinstalldirs) $@

$(PROJECT_INCLUDE)/bsp.h: bsp.h
	$(INSTALL_DATA) $< $@

$(PROJECT_INCLUDE)/coverhd.h: ../../../shared/include/coverhd.h
	$(INSTALL_DATA) $< $@

$(PROJECT_INCLUDE)/chain.h: chain.h
	$(INSTALL_DATA) $< $@

$(PROJECT_INCLUDE)/tod.h: tod.h
	$(INSTALL_DATA) $< $@

$(PROJECT_INCLUDE)/nvram.h: nvram.h
	$(INSTALL_DATA) $< $@

$(PROJECT_INCLUDE)/pci.h: pci.h
	$(INSTALL_DATA) $< $@

TMPINSTALL_FILES += $(PROJECT_INCLUDE) $(PROJECT_INCLUDE)/bsp.h \
    $(PROJECT_INCLUDE)/coverhd.h $(PROJECT_INCLUDE)/chain.h \
    $(PROJECT_INCLUDE)/tod.h $(PROJECT_INCLUDE)/nvram.h \
    $(PROJECT_INCLUDE)/pci.h

all-local: $(TMPINSTALL_FILES)

EXTRA_DIST = bsp.h chain.h extisrdrv.h nvram.h pci.h tod.h

include $(top_srcdir)/../../../../../../automake/local.am
