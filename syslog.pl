# syslog.pl
#
# $Log:	syslog.pl,v $
# 
# tom christiansen <tchrist@convex.com>
# modified to use sockets by Larry Wall <lwall@jpl-devvax.jpl.nasa.gov>
# NOTE: openlog now takes three arguments, just like openlog(3)

package syslog;

warn(qq/Deprecated "require 'syslog.pl'" called from $0.\nYou should /,
     qq/'use Sys::Syslog' instead; continuing\n/) if $^W;

use Sys::Syslog ();

*main::openlog = *Sys::Syslog::openlog;
*main::closelog = *Sys::Syslog::closelog;
*main::setlogmask = *Sys::Syslog::setlogmask;
*main::syslog = *Sys::Syslog::syslog;
*xlate = *Sys::Syslog::xlate;
*connect = *Sys::Syslog::connect;
*disconnect = *Sys::Syslog::disconnect;

1;
