# By John Bazik
#
# Usage: $cwd = &fastcwd;
#
# This is a faster version of getcwd.  It's also more dangerous because
# you might chdir out of a directory that you can't chdir back into.

print qq/Deprecated "require 'fastcwd.pl'" called in $0.\n/,
	qq/You should 'use Cwd' instead; continuing...\n/ if $^W;

use Cwd ();

*fastcwd = *Cwd::fastcwd;

1;
