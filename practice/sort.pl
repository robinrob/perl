#!/usr/bin/env perl

use strict;
use warnings;

my @sorted = (sort ("1", "4", "22", "11", "2"));
print("@sorted\n");

@sorted = (sort (1, 4, 22, 11, 2));
print("@sorted\n");

# We can provide comparision function to sort:
@sorted = (sort { $a cmp $b }(1, 4, 22, 11, 2));
print("@sorted\n");

@sorted = (sort { $a <=> $b }(1, 4, 22, 11, 2));
print("@sorted\n");
