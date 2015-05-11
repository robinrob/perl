#!/usr/bin/env perl

use strict;
use warnings;

my @arr = (1, 2, 3, 4, 5);
my $element;

# Value of outside-declared iterator is restored after loop:
for $element (@arr) {
  print "element: $element\n";
}
unless (defined $element) {
  print "\$element not defined\n";
}
print "\n";

# There is also a default iterator:
for (@arr) {
  print "element: $_\n";
}
print "\n";

# Iteration variable can both named AND local only to iteration:
for my $i (@arr) {
  print "element: $i\n";
}
