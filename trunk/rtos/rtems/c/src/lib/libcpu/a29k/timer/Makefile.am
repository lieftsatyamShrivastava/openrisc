##
## $Id: Makefile.am,v 1.2 2001-09-27 12:01:20 chris Exp $
##

AUTOMAKE_OPTIONS = foreign 1.4

PGM = $(ARCH)/timer.rel

# NOTE: timerisr is normally an assembly file!!!

C_FILES = timer.c timerisr.c
C_O_FILES = $(C_FILES:%.c=$(ARCH)/%.o)

OBJS = $(C_O_FILES)

include $(RTEMS_ROOT)/make/custom/@RTEMS_BSP@.cfg
include $(top_srcdir)/../../../../../automake/lib.am

#
# (OPTIONAL) Add local stuff here using +=
#

$(PGM): $(OBJS)
	$(make-rel)

all-local: $(ARCH) $(OBJS) $(PGM)

.PRECIOUS: $(PGM)

EXTRA_DIST = Makefile timer.c timerisr.c

include $(top_srcdir)/../../../../../automake/local.am
