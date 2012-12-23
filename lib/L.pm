package L;
use 5.008_001;
use strict;
use warnings;

our $VERSION = '0.01';

use Module::Load ();
use parent qw/Exporter/;

our @EXPORT = qw/l/;

sub l {
    my $kls = shift or die 'No modules are specified!';
    Module::Load::load($kls);
    $kls;
}

1;
__END__

=head1 NAME

L - Perl extention to load module in one liner.

=head1 VERSION

This document describes L version 0.01.

=head1 SYNOPSIS

    % perl -ML -E 'say l("String::Random")->new->randregex("[0-9a-zA-Z]{12}")'

=head1 DESCRIPTION

Module loader for one lineer.

=head1 INTERFACE

=head2 Functions

=head3 C<< l($module_name) >>

Loading module specified by argument and returning the module name loaded.

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<perl>

=head1 AUTHOR

Masayuki Matsuki E<lt>y.songmu@gmail.comE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2012, Masayuki Matsuki. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
