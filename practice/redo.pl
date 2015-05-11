#!/usr/bin/env perl

use strict;
use warnings;

# redo re-runs the current iteration of a loop
my $counter = 0;
for (1..5) {
  $counter += 1;
  redo if $counter == 5;
  print "$counter\n";
}
