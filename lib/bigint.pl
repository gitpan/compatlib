# arbitrary size integer math package
#
# by Mark Biggar
#

if ($^W) {
	require DEPRECATE;
	&DEPRECATE::DEPRECATE(__FILE__, "Math::BigInt");
}

use Math::BigInt ();

*bnorm = *Math::BigInt::bnorm;
*bneg  = *Math::BigInt::bneg;
*babs  = *Math::BigInt::babs;
*bcmp  = *Math::BigInt::bcmp;
*badd  = *Math::BigInt::badd;
*bsub  = *Math::BigInt::bsub;
*bgcd  = *Math::BigInt::bgcd;
*bmul  = *Math::BigInt::bmul;
*bmod  = *Math::BigInt::bmod;
*bdiv  = *Math::BigInt::bdiv;

package bigint;
*internal = *Math::BigInt::internal;
*external = *Math::BigInt::external;
*abs 	  = *Math::BigInt::abs;
*cmp 	  = *Math::BigInt::cmp;
*add 	  = *Math::BigInt::add;
*sub 	  = *Math::BigInt::sub;

1;
