package Deprecate;

return (1) unless $^W;

require Exporter;
@ISA = qw(Exporter);

@EXPORT_OK = qw(DEPRECATE);

sub DEPRECATE {
	my($new) = shift;
	my($package, $file) = caller;
	my($script) = $0;

	use File::Basename qw(basename);

	$file = basename($file);
	$package = basename($package);
	$script = basename($script);

	$warn = qq/Deprecated "require '$file'" called /;

	if ($package ne "main") {
	    $warn .= qq/ by package '$package' /;
	}
	$warn .= qq/in $script.\n/;
	
	warn($warn, qq/You should 'use "$new"' instead; continuing...\n/);
}

1;
