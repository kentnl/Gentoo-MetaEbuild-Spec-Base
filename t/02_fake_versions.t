use strict;
use warnings;

use Test::More 0.96;
use FindBin;
use Path::Class qw( dir );

my $sharedir = dir($FindBin::Bin)->subdir('fake_spec');

use Gentoo::MetaEbuild::Spec::Base;
Gentoo::MetaEbuild::Spec::Base->_spec_dir($sharedir);

ok( Gentoo::MetaEbuild::Spec::Base->check( {}, { version => '0.1.0' } ), ' {} is 0.1.0 spec' );
ok( !Gentoo::MetaEbuild::Spec::Base->check( [], { version => '0.1.0' } ), '[] is not 0.1.0 spec' );
ok( !Gentoo::MetaEbuild::Spec::Base->check( {}, { version => '0.1.1' } ), '{} is not 0.1.1 spec' );
ok( Gentoo::MetaEbuild::Spec::Base->check( [], { version => '0.1.1' } ), '[] is 0.1.1 spec' );

done_testing;
