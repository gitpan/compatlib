# syslog.pl
#
# $Log:	syslog.pl,v $
# 
# tom christiansen <tchrist@convex.com>
# modified to use sockets by Larry Wall <lwall@jpl-devvax.jpl.nasa.gov>
# NOTE: openlog now takes three arguments, just like openlog(3)

package syslog;

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Sys::Syslog");
}

use Sys::Syslog ();

*main::openlog = *Sys::Syslog::openlog;
*main::closelog = *Sys::Syslog::closelog;
*main::setlogmask = *Sys::Syslog::setlogmask;
*main::syslog = *Sys::Syslog::syslog;
*xlate = *Sys::Syslog::xlate;
*connect = *Sys::Syslog::connect;
*disconnect = *Sys::Syslog::disconnect;

1;
