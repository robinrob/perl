#!/usr/bin/env perl

use strict;
use warnings;

my ($celsius, $fahrenheit, $temp, $value, $unit);

print "Enter a Celsius/Fahrenheit temperature: ";

$temp = <STDIN>;
chomp $temp;

if (my @matches = ($temp =~ m/([-0-9]+(\.[0-9]+)?)(C|F)/ )) {

  $value = $1;
  $unit = $matches[-1];

  if ($unit eq "C") {
    $celsius = $value;
    $fahrenheit = cToF($celsius);
    printf "%.2f C is %.2f F.\n", $celsius, $fahrenheit; # report both temperatures
  }
  else { # $unit gauranteed to therefore be F if != 'C'
    $fahrenheit = $value;
    $celsius = fToC($value);
    printf "%.2f F is %.2f C.\n", $fahrenheit, $celsius; # report both temperatures
  }

}
else {
  print "Must enter a decimal number followed by C/F, e.g.: -21.3C or 36.1F"
}

sub cToF {
  return $_[0] * 9/5 + 32;
}

sub fToC {
  return ($_[0] - 32) * 5/9;
}
