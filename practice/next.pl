#!/usr/bin/env perl

use strict;
use warnings;


for (1..5) {
  next if $_ == 2;
  print "$_\n";
}

