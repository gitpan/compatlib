;# getopts.pl - a better getopt.pl

;# Usage:
;#      do Getopts('a:bc');  # -a takes arg. -b & -c not. Sets opt_* as a
;#                           #  side effect.

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Getopt::Std");
}

use Getopt::Std ();

*Getopts = *Getopt::Std::getopts;

1;
