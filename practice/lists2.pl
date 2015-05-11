#!/usr/bin/env perl

use strict;
use warnings;


print((1, 2, 3)[2], "\n");
print "\n";

print((1, 2, 3)[2.3], "\n");
print "\n";

# List slice
print((1, 2, 3, 4, 5)[1, 2, 3], "\n");
print "\n";

print((1, 2, 3, 4, 5)[1 .. 3], "\n");
print "\n";

# Reverse list
print(reverse(1, 2, 3, 4, 5), "\n");
print "\n";

# Push
my @arr = (1, 2, 3, 4, 5);
print((push @arr, 6), "\n");
print(@arr, "\n");
print "\n";

# Pop
print((pop @arr), "\n");
print(@arr, "\n");
print "\n";

# Unshift
print((unshift @arr, 0), "\n");
print(@arr, "\n");
print "\n";

# Shift
print((shift @arr), "\n");
print(@arr, "\n");
print "\n";
