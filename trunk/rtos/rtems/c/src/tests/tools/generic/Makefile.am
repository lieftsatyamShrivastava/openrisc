##
##  $Id: Makefile.am,v 1.2 2001-09-27 12:02:48 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4
ACLOCAL_AMFLAGS = -I $(RTEMS_TOPdir)/aclocal

noinst_SCRIPTS = difftest sorttimes

project_bspdir = $(PROJECT_ROOT)/@RTEMS_BSP@

PREINSTALL_FILES += $(project_bspdir)/tests $(project_bspdir)/tests/difftest \
    $(project_bspdir)/tests/sorttimes

$(project_bspdir)/tests:
	@$(mkinstalldirs) $@

$(project_bspdir)/tests/difftest: difftest
	$(INSTALL_SCRIPT) $< $@

$(project_bspdir)/tests/sorttimes: sorttimes
	$(INSTALL_SCRIPT) $< $@

all-local: $(PREINSTALL_FILES)

include $(top_srcdir)/../../../../../automake/local.am
