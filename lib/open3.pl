# This is a compatibility interface to IPC::Open3.  New programs should
# do
#
#     use IPC::Open3;
#
# instead of
#
#     require 'open3.pl';

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "IPC::Open3");
}

package main;
use IPC::Open3 'open3';

1;
