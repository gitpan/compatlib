# From: asherman@fmrco.com (Aaron Sherman)

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Sys::Hostname");
}

use Sys::Hostname ();

*hostname = *Sys::Hostname::hostname;

1;
