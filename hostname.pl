# From: asherman@fmrco.com (Aaron Sherman)

print qq/Deprecated "require 'hostname.pl'" called in $0.\n/,
	qq/You should 'use Sys::Hostname' instead; continuing...\n/ if $^W;

use Sys::Hostname ();

*hostname = *Sys::Hostname::hostname;

1;
