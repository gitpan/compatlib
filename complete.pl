;#
;#      @(#)complete.pl,v1.1            (me@anywhere.EBay.Sun.COM) 09/23/91
;#
warn(qq/Deprecated "require 'complete.pl'" called from $0.\nYou should /,
     qq/'use Term::Complete' instead; continuing\n/) if $^W;

use Term::Complete ();

*complete = *Term::Complete::complete;

1;
