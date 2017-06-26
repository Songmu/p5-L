#!perl -w
use strict;
use Test::More;

use L;

my $some_core_module = 'Data::Dumper';
my $module_path      = $some_core_module;
$module_path =~ s!::!/!g;
$module_path .= '.pm';

ok !$INC{$module_path}; # not loaded.
my $out = Data::Dumper->Dump([qw/hoge/]);
is $out, q[$VAR1 = 'hoge';]."\n";
ok $INC{$module_path};

local $@;
eval {
    List::Util->dummy;
};
like $@, qr/Can't locate object method "dummy" via package "List::Util"/;

eval {
    no warnings;
    hoge();
};
like $@, qr/(?:Undefined subroutine &main::hoge called|Use of inherited AUTOLOAD for non-method main::hoge\(\) is no longer allowed)/;

done_testing;
