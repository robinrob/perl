#!/usr/bin/env perl

use strict;
use warnings;


print "Type CTRL+d to end: ";
while (<STDIN>) {
  print "$_";
}
print "ended\n";
