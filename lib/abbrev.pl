;# Usage:
;#	%foo = ();
;#	&abbrev(*foo,LIST);
;#	...
;#	$long = $foo{$short};


if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Text::Abbrev");
}

use Text::Abbrev ();

*abbrev = *Text::Abbrev::abbrev;

1;
