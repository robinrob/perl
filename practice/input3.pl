#!/usr/bin/env perl

use strict;
use warnings;


print "Type CTRL+d to end: ";
while (<STDIN>) {
  chomp; # applies by default to $_
  print "$_";
}
print "ended\n";
