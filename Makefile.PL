use strict;
use warnings;
use ExtUtils::MakeMaker;

my %config = (
    NAME          => 'Class::Agreement',
    AUTHOR        => 'Ian Langworth <ian@cpan.org>',
    VERSION_FROM  => 'lib/Class/Agreement.pm',
    ABSTRACT_FROM => 'lib/Class/Agreement.pm',
    PREREQ_PM     => {
        'Test::More'       => '0.54',
        'Test::Exception'  => '0.20',
        'Class::Inspector' => '1.13',
        'Scalar::Util'     => '1.17',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Class-Agreemnt-*' },
);

# By default, tests in t/private are not run.
# You shouldn't care about them, either. :)

WriteMakefile(%config);

