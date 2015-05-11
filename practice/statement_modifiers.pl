#!/usr/bin/env perl

use strict;
use warnings;

# Statement modifiers come after a statement to modify the behaviour.
# In Perl, modifiers can be conditionals OR iterations:


print "False\n" unless 0;

print "$_\n" for (1, 2, 3);

my $total = 0;
$total += $_ for (1, 2, 3);

print "total: $total\n";

