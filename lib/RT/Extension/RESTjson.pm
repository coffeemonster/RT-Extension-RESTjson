package RT::Extension::RESTjson;
our $VERSION = "1.0";
1;
=head1 DESCRIPTION

    RT::Extension::RESTjson - json overlay for the REST/1.0 interface

=head1 SYNOPSIS

    The following interfaces have been redefined to make responses easier parse:
    Note: /1.2/ instead of RT's /1.0/ to avoid breaking things.

        GET /REST/1.2/search/ticket/
        GET /REST/1.2/ticket/nn/
        GET /REST/1.2/ticket/nn/history
        GET /REST/1.2/ticket/nn/attachments
        GET /REST/1.2/ticket/nn/attachments/xx

    JSON wrapper: all responses come in this form

        {
            "status" => "200 Ok",
            "version" => "RT/4.0.12",
            "objects" => [
                { <object_1> }, { <object_2> }, ...
            ],
            # error only exists if there was an error
            "error" => "error message"
        }
 

=head1 OBJECTS

    GET /REST/1.2/search/ticket?query=Requestor.EmailAddress%20LIKE%20"alister@example.com";fields=id,Subject,Created
    <object> : { "id" : "11", "Subject" : "My Test Ticket!", "Created" : "Wed May 29 21:08:58 2013" }

    GET /REST/1.2/ticket/11/
    <object> : { "id" : "185", "object" : "ticket/11", "Subject" : "My Subject"  .. }

    GET /REST/1.2/ticket/11/attachments
    <object> :  "id" : "185",
                "object" : "ticket/11",
                "Attachments" : [
                    "183: (Unnamed) (multipart/mixed / 0b)",
                    "184: (Unnamed) (text/html / 29b)",
                    "185: #5778.pdf (application/pdf / 112.2k)"
                ]

    GET /REST/1.2/ticket/11/attachments/185 
    <object> :  "id" : "185",
                "object" : "ticket/11/attachments/185",
                "Headers" : "Subject: first post!\n...",
                "Content-Type" : "application/pdf","
                "Content" : "%PDF-1.4\r\n...",
                ...

=head1 AUTHOR

    Alister West <https://alisterwest.com>


=head1 LICENSE AND COPYRIGHT

    Copyright 2012 Alister West, C<< <alister at alisterwest.com> >>

    This program is free software; you can redistribute it and/or modify it under
    the terms of either: the GNU General Public License as published by the Free
    Software Foundation; or the Artistic License.

    See http://dev.perl.org/licenses/ for more information.


=head1 CHANGES

1.0  2013-09-26
    - created project to override responses from RT's REST interface

=cut
