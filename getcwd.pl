# By Brandon S. Allbery
#
# Usage: $cwd = &getcwd;

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Cwd");
}

use Cwd ();

*getcwd = *Cwd::getcwd;

1;
