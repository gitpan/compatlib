;# $RCSfile: termcap.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:16 $
;#

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Term::Cap");
}

use Term::Cap ();

*Tgetent = *Term::Cap::Tgetent;
*Tputs = *Term::Cap::Tputs;
*Tgoto = *Term::Cap::Tgoto;
*Tpad = *Term::Cap::Tpad;
1;
