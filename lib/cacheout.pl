# Open in their package.

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "FileCache");
}

use FileCache ();

*cacheout = *FileCache::cacheout;

package cacheout;

*open  = *FileCache::open;
*close = *FileCache::close;

1;
