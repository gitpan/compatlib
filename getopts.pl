;# getopts.pl - a better getopt.pl

;# Usage:
;#      do Getopts('a:bc');  # -a takes arg. -b & -c not. Sets opt_* as a
;#                           #  side effect.

print qq/Deprecated "require 'getopts.pl'" called in $0.\n/,
	qq/You should 'use Getopt::Std' instead; continuing...\n/ if $^W;

use Getopt::Std ();

*Getopts = *Getopt::Std::getopts;

1;
