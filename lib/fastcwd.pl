# By John Bazik
#
# Usage: $cwd = &fastcwd;
#
# This is a faster version of getcwd.  It's also more dangerous because
# you might chdir out of a directory that you can't chdir back into.

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Cwd");
}

use Cwd ();

*fastcwd = *Cwd::fastcwd;

1;
