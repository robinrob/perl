#!/usr/bin/env perl

use strict;
use warnings;


print((1.4 .. 6.9), "\n");

print((-6 .. 3), "\n");

print(('a' .. 'k'), "\n");

print(('z' .. 3), "\n");

print 1 .. 3, "\n";

# Either two or three '.'s can be used:
print 1 ... 3, "\n";
