# Arbitrary length float math package
#
# by Mark Biggar
#

if ($^W) {
use DEPRECATE ();
&Deprecate::DEPRECATE("Math::BigFloat");
}

use Math::BigFloat ();

*fadd = *Math::BigFloat::fadd;
*fsub = *Math::BigFloat::fsub;
*fmul = *Math::BigFloat::fmul;
*fdiv = *Math::BigFloat::fdiv;
*fneg = *Math::BigFloat::fneg;
*fabs = *Math::BigFloat::fabs;
*fcmp = *Math::BigFloat::fcmp;
*fround = *Math::BigFloat::fround;
*ffround = *Math::BigFloat::ffround;
*fnorm = *Math::BigFloat::fnorm;
*fsqrt = *Math::BigFloat::fsqrt;

package bigfloat;
*norm = *Math::BigFloat::norm;
*round = *Math::BigFloat::round;
1;
