;# ctime.pl is a simple Perl emulation for the well known ctime(3C) function.
;#

warn(qq/Deprecated "require 'ctime.pl'" called from $0.\nYou should /,
     qq/'use Time::localtime' instead; continuing\n/) if $^W;

use Time::localtime ();

*ctime = *Time::localtime::ctime;

1;
