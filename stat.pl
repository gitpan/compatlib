;# $RCSfile: stat.pl,v $$Revision: 4.1 $$Date: 92/08/07 18:24:13 $

;# Usage:
;#	require 'stat.pl';
;#	@ary = stat(foo);
;#	$st_dev = @ary[$ST_DEV];
;#

print qq/Deprecated "require 'stat.pl'" called in $0.\n/,
	qq/You should 'use File::stat' instead; continuing...\n/ if $^W;

use File::stat ();

*Stat = *File::stat::stat;

1;
