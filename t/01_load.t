use strict;
use warnings;

use Test::More 0.96;
use FindBin;
use Path::Class qw( dir );

my $root = dir($FindBin::Bin)->parent();

my $sharedir = $root->subdir('share');

use Gentoo::MetaEbuild::Spec::Base;

Gentoo::MetaEbuild::Spec::Base->_spec_dir($sharedir);

ok( Gentoo::MetaEbuild::Spec::Base->check( {} ), '{} is default spec' );

done_testing;
