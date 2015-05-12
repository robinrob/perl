#!/usr/bin/env perl

use strict;
use warnings;

my ($celsius, $fahrenheit, $temp, $value, $unit);

print "Enter a Celsius/Fahrenheit temperature: ";

$temp = <STDIN>;
chomp $temp;

my @matches = ($temp =~ m/([-0-9]+(\.[0-9]+)?)(C|F)/ );

$value = $1;
$unit = $matches[-1];

if ($unit eq "C") {
  $celsius = $value;
  $fahrenheit = cToF($celsius);
  print "$celsius C is $fahrenheit F.\n"; # report both temperatures
}
elsif ($unit eq "F") {
  $fahrenheit = $value;
  $celsius = fToC($value);
  print "$fahrenheit F is $celsius C.\n"; # report both temperatures
}

sub cToF {
  return ($_[0] - 32) * 5/9;
}

sub fToC {
  return $_[0] * 9/5 + 32;
}


