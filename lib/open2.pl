# This is a compatibility interface to IPC::Open2.  New programs should
# do
#
#     use IPC::Open2;
#
# instead of
#
#     require 'open2.pl';

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "IPC::Open2");
}

package main;
use IPC::Open2 'open2';

1;
