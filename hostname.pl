# From: asherman@fmrco.com (Aaron Sherman)

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Sys::Hostname");
}

use Sys::Hostname ();

*hostname = *Sys::Hostname::hostname;

1;
