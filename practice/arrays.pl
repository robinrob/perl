#!/usr/bin/env perl

use strict;
use warnings;


# Arrays are not same as lists! Lists are always literal and never assigned.
# Arrays can be initialised using a list or by explicitly setting the elements:

my @arr1 = (1, 2, 3);
print("@arr1", "\n");

# Note that when setting an array element individually, the element is
# referenced with the '$' since each array element is a scalar.
my @arr;
$arr[0] = 1;
$arr[1] = 2;
$arr[2] = 3;
print("@arr", "\n");

# Since ranges are lists, arrays can be initialised or appended to like this:
push @arr, 4..6;
print("@arr", "\n");

# Swapping elements is easy:
@arr[2,3] = @arr[3,2];
print("@arr", "\n");

($arr[2], $arr[3]) = ($arr[3], $arr[4]);
print("@arr", "\n");

# Highest element index of array:
print "highest element index of array: $#arr", "\n";
