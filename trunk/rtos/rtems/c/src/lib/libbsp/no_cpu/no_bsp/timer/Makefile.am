##
## $Id: Makefile.am,v 1.2 2001-09-27 12:00:27 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

PGM = $(ARCH)/timer.rel

C_FILES = timer.c timerisr.c
C_O_FILES = $(C_FILES:%.c=$(ARCH)/%.o)

OBJS = $(C_O_FILES)

include $(RTEMS_ROOT)/make/custom/@RTEMS_BSP@.cfg
include $(top_srcdir)/../../../../../../automake/lib.am

#
# (OPTIONAL) Add local stuff here using +=
#

$(PGM): $(OBJS)
	$(make-rel)

# the .rel file built here will be put into libbsp.a by ../wrapup/Makefile

all-local: $(ARCH) $(OBJS) $(PGM)

.PRECIOUS: $(PGM)

EXTRA_DIST = timer.c timerisr.c

include $(top_srcdir)/../../../../../../automake/local.am
