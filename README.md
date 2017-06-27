# NAME

L - Perl extention to load module automatically in one liner.

# VERSION

This document describes L version 0.01.

# SYNOPSIS

    % perl -ML -E 'say String::Random->new->randregex("[0-9a-zA-Z]{12}")'

# DESCRIPTION

Module auto loader for one liner.

This modules is dangerous, then don't use this module in other perl modules, scripts or product code.
This should be used only in one liner.

# DEPENDENCIES

Perl 5.8.1 or later.

# BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

# SEE ALSO

[perl](https://metacpan.org/pod/perl)

# AUTHOR

Masayuki Matsuki <y.songmu@gmail.com>

# CONTRIBUTORS

Tokuhiro Matsuno &lt;tokuhirom AAJKLFJEF@ GMAIL COM>

(Most of code is written by him.)

# LICENSE AND COPYRIGHT

Copyright (c) 2012, Masayuki Matsuki. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
