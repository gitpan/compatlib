;# $RCSfile: termcap.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:16 $
;#

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Term::Cap");
}

use Term::Cap ();

*Tgetent = *Term::Cap::Tgetent;
*Tputs = *Term::Cap::Tputs;
*Tgoto = *Term::Cap::Tgoto;
*Tpad = *Term::Cap::Tpad;
1;
