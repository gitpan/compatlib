;#
;#      @(#)complete.pl,v1.1            (me@anywhere.EBay.Sun.COM) 09/23/91
;#

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Term::Complete");
}

use Term::Complete ();

*complete = *Term::Complete::complete;

1;
