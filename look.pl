;# Usage: &look(*FILEHANDLE,$key,$dict,$fold)

;# Sets file position in FILEHANDLE to be first line greater than or equal
;# (stringwise) to $key.  Pass flags for dictionary order and case folding.

package main;

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Search::Dict");
}

use Search::Dict ();

*look = *Search::Dict::look;

1;
