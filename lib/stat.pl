;# $RCSfile: stat.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:13 $

;# Usage:
;#	require 'stat.pl';
;#	@ary = stat(foo);
;#	$st_dev = @ary[$ST_DEV];
;#

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "File::stat");
}

use File::stat ();

*Stat = *File::stat::stat;

1;
