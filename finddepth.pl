# Usage:
#	require "finddepth.pl";
#
#	&finddepth('/foo','/bar');
#
#	sub wanted { ... }
#		where wanted does whatever you want.  $dir contains the
#		current directory name, and $_ the current filename within
#		that directory.  $name contains "$dir/$_".  You are cd'ed
#		to $dir when the function is called.  The function may
#		set $prune to prune the tree.
#

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("File::Find");
}

use File::Find ();

*name		= *File::Find::name;
*prune		= *File::Find::prune;
*dir		= *File::Find::dir;
*topdir		= *File::Find::topdir;
*topdev		= *File::Find::topdev;
*topino		= *File::Find::topino;
*topmode	= *File::Find::topmode;
*topnlink	= *File::Find::topnlink;

sub finddepth {
    &File::Find::finddepth(\&wanted, @_);
}

1;
