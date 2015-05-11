#!/usr/bin/env perl

use strict;
use warnings;


# Last is used to break out of a loop:
for (1..5) {
  last if $_ == 4;
  print "$_\n";
}
