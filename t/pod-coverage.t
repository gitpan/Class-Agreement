#!perl -T

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan $@
    ? (
    skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" )
    : ( tests => 1 );

pod_coverage_ok( 'Class::Agreement', { trustme => [qr/^result$/] } );
