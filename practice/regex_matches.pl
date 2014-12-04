#!/usr/bin/env perl

use strict;
use warnings;


my $input;

print "Enter input: ";
$input = <STDIN>;
chomp($input);

if ($input =~ m/([a-z]+) +([0-9]+)/) {
  printf "matches: %s %s\n", $1, $2;
}
else {
  print "No matches.\n"
}



