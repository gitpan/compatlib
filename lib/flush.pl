;# Usage: &flush(FILEHANDLE)
;# flushes the named filehandle

;# Usage: &printflush(FILEHANDLE, "prompt: ")
;# prints arguments and flushes filehandle

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "IO::File");
}

use IO::File ();

*flush = *IO::File::flush;

sub printflush {
    local($old) = select(shift);
    $| = 1;
    print @_;
    $| = 0;
    select($old);
}

1;
