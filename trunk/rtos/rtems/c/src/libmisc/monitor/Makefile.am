##
## $Id: Makefile.am,v 1.2 2001-09-27 12:01:43 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

LIBNAME = libmonitor-tmp
LIB = $(ARCH)/$(LIBNAME).a

# We only build multiprocessing related files if HAS_MP was defined
MP_C_FILES = mon-mpci.c

C_FILES = mon-command.c mon-symbols.c mon-prmisc.c mon-monitor.c \
    mon-object.c mon-server.c mon-task.c mon-queue.c mon-driver.c \
    mon-dname.c mon-itask.c mon-extension.c mon-manager.c mon-config.c

if HAS_MP
C_O_FILES = $(C_FILES:%.c=$(ARCH)/%.o) $(MP_C_FILES:%.c=$(ARCH)/%.o)
else
C_O_FILES = $(C_FILES:%.c=$(ARCH)/%.o)
endif

H_FILES = monitor.h symbols.h

OBJS = $(C_O_FILES)

include $(RTEMS_ROOT)/make/custom/@RTEMS_BSP@.cfg
include $(top_srcdir)/../../../automake/lib.am

$(PROJECT_INCLUDE)/rtems:
	$(mkinstalldirs) $@
$(PROJECT_INCLUDE)/rtems/%.h: %.h
	$(INSTALL_DATA) $< $@

#
# (OPTIONAL) Add local stuff here using +=
#

$(LIB): $(OBJS)
	$(make-library)

PREINSTALL_FILES += $(PROJECT_INCLUDE)/rtems \
    $(H_FILES:%=$(PROJECT_INCLUDE)/rtems/%)

all-local: $(ARCH) $(PREINSTALL_FILES) $(OBJS) $(LIB)

.PRECIOUS: $(LIB)

EXTRA_DIST = README mon-command.c mon-config.c mon-dname.c mon-driver.c \
    mon-extension.c mon-itask.c mon-manager.c mon-monitor.c mon-mpci.c \
    mon-object.c mon-prmisc.c mon-queue.c mon-server.c mon-symbols.c \
    mon-task.c monitor.h symbols.h

include $(top_srcdir)/../../../automake/local.am
