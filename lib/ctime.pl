;# ctime.pl is a simple Perl emulation for the well known ctime(3C) function.
;#

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Time::localtime");
}

use Time::localtime ();

*ctime = *Time::localtime::ctime;

1;
