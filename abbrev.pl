;# Usage:
;#	%foo = ();
;#	&abbrev(*foo,LIST);
;#	...
;#	$long = $foo{$short};

warn(qq/Deprecated "require 'abbrev.pl'" called from $0.\nYou should /,
     qq/'use Text::Abbrev' instead; continuing\n/) if $^W;

use Text::Abbrev ();

*abbrev = *Text::Abbrev::abbrev;

1;
