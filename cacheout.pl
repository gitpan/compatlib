# Open in their package.

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("FileCache");
}

use FileCache ();

*cacheout = *FileCache::cacheout;

package cacheout;

*open  = *FileCache::open;
*close = *FileCache::close;

1;
