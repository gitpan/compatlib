;# Usage: &flush(FILEHANDLE)
;# flushes the named filehandle

;# Usage: &printflush(FILEHANDLE, "prompt: ")
;# prints arguments and flushes filehandle

warn(qq/Deprecated "require 'flush.pl'" called from $0.\nYou should /,
     qq/'use IO::File' instead; continuing\n/) if $^W;

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
