;# pwd.pl - keeps track of current working directory in PWD environment var
;#
;# $RCSfile: pwd.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:11 $
;#
;# $Log:	pwd.pl,v $
;#
;# Usage:
;#	require "pwd.pl";
;#	&initpwd;
;#	...
;#	&chdir($newdir);

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Cwd (chdir)");
}

use Cwd qw(chdir);
*chdir = *Cwd::chdir;

1;
