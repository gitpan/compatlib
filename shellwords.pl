;# shellwords.pl
;#
;# Usage:
;#	require 'shellwords.pl';
;#	@words = &shellwords($line);
;#	or
;#	@words = &shellwords(@lines);
;#	or
;#	@words = &shellwords;		# defaults to $_ (and clobbers it)

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Text::Parsewords");
}

use Text::Parsewords ();

*shellwords = *Text::Parsewords::shellwords;

1;
