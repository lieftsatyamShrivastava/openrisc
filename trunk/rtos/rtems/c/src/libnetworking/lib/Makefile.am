##
## $Id: Makefile.am,v 1.2 2001-09-27 12:01:52 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

LIBNAME = lib.a
LIB = $(ARCH)/$(LIBNAME)

C_FILES = getprotoby.c rtems_bsdnet_ntp.c syslog.c tftpDriver.c
C_O_FILES = $(C_FILES:%.c=$(ARCH)/%.o)

OBJS = $(C_O_FILES)

include $(RTEMS_ROOT)/make/custom/@RTEMS_BSP@.cfg
include $(top_srcdir)/../../../automake/lib.am

#
# Add local stuff here using +=
#

AM_CPPFLAGS += -DNOPOLL -DNOSELECT

$(LIB): $(OBJS)
	$(make-library)

all-local: $(ARCH) $(OBJS) $(LIB)

.PRECIOUS: $(LIB)

EXTRA_DIST = README getprotoby.c rtems_bsdnet_ntp.c syslog.c tftpDriver.c

include $(top_srcdir)/../../../automake/local.am
