#!/usr/bin/env perl

use strict;
use warnings;


my $scalar1 = "robin";
print $scalar1, "\n";
print "\n";

my $scalar2 = 27;
print $scalar2, "\n";
print "\n";

my @arr = ("robin", "smith", 27);
print @arr, "\n";
print "\n";

# Double-assignment, extracting elements from list
my $scalar3, my $scalar4;
($scalar3, $scalar4) = ("one", "two");
print $scalar3, "\n";
print $scalar4, "\n";
print "\n";
