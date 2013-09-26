#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'RT::Extension::RESTjson' );
}

diag( "Testing RT::Extension::RESTjson $RT::Extension::RESTjson::VERSION, Perl $], $^X" );

