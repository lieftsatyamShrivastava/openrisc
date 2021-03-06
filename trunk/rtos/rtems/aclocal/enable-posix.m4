dnl $Id: enable-posix.m4,v 1.2 2001-09-27 11:59:11 chris Exp $

AC_DEFUN(RTEMS_ENABLE_POSIX,
[
## AC_BEFORE([$0], [RTEMS_CHECK_POSIX_API])dnl

AC_ARG_ENABLE(posix,
[  --enable-posix                       enable posix interface],
[case "${enableval}" in 
  yes) RTEMS_HAS_POSIX_API=yes ;;
  no) RTEMS_HAS_POSIX_API=no ;;
  *)  AC_MSG_ERROR(bad value ${enableval} for enable-posix option) ;;
esac],[RTEMS_HAS_POSIX_API=yes]) 

changequote(,)dnl
case "${target}" in
  # hpux unix port should go here
  i[34567]86-pc-linux*)         # unix "simulator" port
	RTEMS_HAS_POSIX_API=no
	;;
  i[34567]86-*freebsd*) # unix "simulator" port
	RTEMS_HAS_POSIX_API=no
	;;
  no_cpu-*rtems*)
	RTEMS_HAS_POSIX_API=no
	;;
  sparc-sun-solaris*)             # unix "simulator" port
	RTEMS_HAS_POSIX_API=no
	;;
  *) 
	;;
esac
changequote([,])dnl
AC_SUBST(RTEMS_HAS_POSIX_API)
])
