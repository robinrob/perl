#!/usr/bin/env perl

use strict;
use warnings;

my @arr = (1, 2, 3, 4, 5);
my $element;

for $element (@arr) {
  print "element: $element\n";
}
print "\n";

# There is also a default iterator:
for (@arr) {
  print "element: $_\n";
}

