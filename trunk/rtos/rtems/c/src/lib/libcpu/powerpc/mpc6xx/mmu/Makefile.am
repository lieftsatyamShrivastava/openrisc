##
## $Id: Makefile.am,v 1.2 2001-09-27 12:01:25 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

PGM = $(ARCH)/mmu.rel

C_FILES = bat.c

S_FILES = mmuAsm.S

H_FILES = bat.h

mmu_rel_OBJECTS = $(C_FILES:%.c=$(ARCH)/%.o) $(S_FILES:%.S=$(ARCH)/%.o)

include $(RTEMS_ROOT)/make/custom/@RTEMS_BSP@.cfg
include $(top_srcdir)/../../../../../automake/lib.am

$(PROJECT_INCLUDE)/libcpu:
	$(mkinstalldirs) $@
$(PROJECT_INCLUDE)/libcpu/%.h: %.h
	$(INSTALL_DATA) $< $@

#
# (OPTIONAL) Add local stuff here using +=
#

$(PGM): $(mmu_rel_OBJECTS)
	$(make-rel)

PREINSTALL_FILES += $(PROJECT_INCLUDE)/libcpu \
    $(PROJECT_INCLUDE)/libcpu/bat.h

all-local: $(ARCH) $(PREINSTALL_FILES) $(mmu_rel_OBJECTS) $(PGM)

.PRECIOUS: $(PGM)

EXTRA_DIST = bat.c bat.h mmuAsm.S

include $(top_srcdir)/../../../../../automake/local.am
