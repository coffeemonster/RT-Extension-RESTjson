package RT::Extension::RESTjson;
our $VERSION = "1.0";
1;
=head1 DESCRIPTION

    RT::Extension::RESTjson - json overlay for the REST/1.0 interface

=head1 SYNOPSIS

    The following interfaces have been redefined:

        GET /REST/1.2/ticket/nn/*
        GET /REST/1.2/search/ticket/

    Todo: POST (and the error handling for them)

    Note: v1.2 incase RT comes out with a 1.1

=head1 AUTHOR

    alisterwest.com

=cut
