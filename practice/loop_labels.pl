#!/usr/bin/env perl

use strict;
use warnings;


# loops can be labelled and loop operations directed to operate
# on particular loops by passing those labels:

outer: for (1..5) {
  print "$_\n";
  inner: for ('a' .. 'e') {
    last outer if $_ eq 'd';
    print "$_";
  }
}

print "\n";

# (It's good practice to use capital letters for labels though)
