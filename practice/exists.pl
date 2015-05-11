#!/usr/bin/env perl

use strict;
use warnings;

my %hash = ("one" => 1);

if (exists $hash{"two"}) {
  print "Exists\n";
}
elsif (not exists $hash{"two"}) {
  print "Does not exist\n";
}
