#!/usr/bin/env perl

use strict;
use warnings;


print((1, 2, 3)[2], "\n");

print((1, 2, 3)[2.3], "\n");

# List slice
print((1, 2, 3, 4, 5)[1, 2, 3], "\n");

print((1, 2, 3, 4, 5)[1 .. 3], "\n");

# Reverse list
print(reverse(1, 2, 3, 4, 5), "\n");
