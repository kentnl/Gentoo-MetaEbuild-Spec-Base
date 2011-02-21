use strict;
use warnings;

use Test::More 0.96;
use FindBin;

use Test::File::ShareDir
  -root  => "$FindBin::Bin/../",
  -share => { -module => { 'Gentoo::MetaEbuild::Spec::Base' => 'share' } };

use Gentoo::MetaEbuild::Spec::Base;

ok( Gentoo::MetaEbuild::Spec::Base->check( {} ), '{} is default spec' );

done_testing;
