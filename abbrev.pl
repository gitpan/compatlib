;# Usage:
;#	%foo = ();
;#	&abbrev(*foo,LIST);
;#	...
;#	$long = $foo{$short};


if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Text::Abbrev");
}

use Text::Abbrev ();

*abbrev = *Text::Abbrev::abbrev;

1;
