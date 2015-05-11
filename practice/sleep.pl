#!/usr/bin/env perl

use strict;
use warnings;


for (reverse(1..5)) {
  print "$_ ...\n";
  sleep 1;
}
print "Blastoff!\n";
