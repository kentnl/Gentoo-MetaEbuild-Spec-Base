
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'FindBin' => '0',
    'Module::Build' => '0.3601',
    'Test::Fatal' => '0',
    'Test::More' => '0.96'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'A Base Class for Gentoo MetaEbuild Specifications.',
  'dist_author' => [
    'Kent Fredric <kentnl@cpan.org>'
  ],
  'dist_name' => 'Gentoo-MetaEbuild-Spec-Base',
  'dist_version' => '0.1.2',
  'license' => 'perl',
  'module_name' => 'Gentoo::MetaEbuild::Spec::Base',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Carp' => '0',
    'Data::Rx' => '0',
    'File::ShareDir' => '0',
    'JSON::XS' => '0',
    'Moose' => '0',
    'MooseX::ClassAttribute' => '0',
    'MooseX::Has::Sugar' => '0',
    'MooseX::Types::Moose' => '0',
    'MooseX::Types::Path::Class' => '0',
    'MooseX::Types::Perl' => '0',
    'Path::Class' => '0',
    'Scalar::Util' => '0',
    'namespace::autoclean' => '0',
    'version' => '0'
  },
  'script_files' => [],
  'share_dir' => {
    'module' => {
      'Gentoo::MetaEbuild::Spec::Base' => 'share'
    }
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
