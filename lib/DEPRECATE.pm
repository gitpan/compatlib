package DEPRECATE;

require Exporter;
@ISA = qw(Exporter);

@EXPORT_OK = qw(DEPRECATE REMOVE);

sub DEPRECATE {
	my($file, $new) = @_;
	my $package = caller;
	my($script) = $0;

	use File::Basename qw(basename);

	$script = basename($script);

	$warn = qq/Deprecated library '$file' referenced /;

	if ($package ne "main") {
	    $warn .= qq/by package '$package' /;
	}
	$warn .= qq/in $script.\n/;
	
	warn($warn, qq/You should use "$new" instead; continuing...\n/);
}

sub REMOVE {
	warn("WARNING: This library is considered non-standard and will be\n",
	     "removed from a future version of perl (probably 5.006)\n");
}
1;
