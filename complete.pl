;#
;#      @(#)complete.pl,v1.1            (me@anywhere.EBay.Sun.COM) 09/23/91
;#

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Term::Complete");
}

use Term::Complete ();

*complete = *Term::Complete::complete;

1;
