;# ctime.pl is a simple Perl emulation for the well known ctime(3C) function.
;#

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Time::localtime");
}

use Time::localtime ();

*ctime = *Time::localtime::ctime;

1;
