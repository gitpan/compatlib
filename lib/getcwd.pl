# By Brandon S. Allbery
#
# Usage: $cwd = &getcwd;

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Cwd");
}

use Cwd ();

*getcwd = *Cwd::getcwd;

1;
