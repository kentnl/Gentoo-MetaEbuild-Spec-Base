use strict;
use warnings;

use Test::More 0.96;
use FindBin;
use Path::Class qw( dir );
use Test::Fatal;

my $sharedir = dir($FindBin::Bin)->subdir('fake_spec');

use Gentoo::MetaEbuild::Spec::Base;
Gentoo::MetaEbuild::Spec::Base->_spec_dir($sharedir);

ok( Gentoo::MetaEbuild::Spec::Base->check( {}, { version => '0.1.0' } ), ' {} is 0.1.0 spec' );
ok( exception { Gentoo::MetaEbuild::Spec::Base->check( {}, { version => '0.1.2' } ); 0 }, '0.1.2 spec dies' );

done_testing;
