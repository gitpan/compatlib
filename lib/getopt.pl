;# $RCSfile: getopt.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:23:58 $

;# Process single-character switches with switch clustering.  Pass one argument
;# which is a string containing all switches that take an argument.  For each
;# switch found, sets $opt_x (where x is the switch name) to the value of the
;# argument, or 1 if no argument.  Switches which take an argument don't care
;# whether there is a space between the switch and the argument.

;# Usage:
;#	do Getopt('oDI');  # -o, -D & -I take arg.  Sets opt_* as a side effect.

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Getopt::Std");
}

use Getopt::Std ();

*Getopt = *Getopt::Std::getopt;

1;
