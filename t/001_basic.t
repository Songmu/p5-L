#!perl -w
use strict;
use Test::More;

use L;

local $@;
eval { l };
like $@, qr/No modules are specified!/;

my $some_core_module = 'English';
my $module_path      = "$some_core_module.pm";
ok !$INC{$module_path}; # not loaded.

my $loaded_module = l($some_core_module);
is $loaded_module, $some_core_module;

ok $INC{$module_path};

done_testing;
