# Open in their package.

warn qq/Deprecated "require 'cacheout.pl'" called in $0.\n/,
     qq/You should 'use FileCache' instead; continuing...\n" if $^W;

use FileCache;

*cacheout = *FileCache::cacheout;

package cacheout;

*open  = *FileCache::open;
*close = *FileCache::close;

1;
