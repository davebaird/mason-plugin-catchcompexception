#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Mason::Plugin::CatchCompException' ) || print "Bail out!\n";
}

diag( "Testing Mason::Plugin::CatchCompException $Mason::Plugin::CatchCompException::VERSION, Perl $], $^X" );
