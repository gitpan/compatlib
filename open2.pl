# This is a compatibility interface to IPC::Open2.  New programs should
# do
#
#     use IPC::Open2;
#
# instead of
#
#     require 'open2.pl';

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("IPC::Open2");
}

package main;
use IPC::Open2 'open2';

1;
