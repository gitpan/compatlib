;# $RCSfile: importenv.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:02 $

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Env");
}

use Env;

1;
