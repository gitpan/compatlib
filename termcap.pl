;# $RCSfile: termcap.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:16 $
;#
warn(qq/Deprecated "require 'termcap.pl'" called from $0.\nYou should /,
     qq/'use Term::Cap' instead; continuing\n/) if $^W;

use Term::Cap ();

*Tgetent = *Term::Cap::Tgetent;
*Tputs = *Term::Cap::Tputs;
*Tgoto = *Term::Cap::Tgoto;
*Tpad = *Term::Cap::Tpad;
1;
