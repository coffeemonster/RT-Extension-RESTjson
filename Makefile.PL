use inc::Module::Install;

name        'RT-Extension-RESTjson';
all_from    'lib/RT/Extension/RESTjson.pm';
readme_from 'lib/RT/Extension/RESTjson.pm';
include     'Module::Install::RTx';
requires    'JSON';

# Allow build of a distribution without having an RT install
RTx 'RT-Extension-RESTjson' unless $ENV{DIST_BUILD};

WriteAll;

=head1  BUILD

    git clean -xfd
    DIST_BUILD=1 perl Makefile.PL
    make manifest
    make dist

=cut
