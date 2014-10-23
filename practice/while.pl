#!/usr/bin/env perl

use strict;
use warnings;


my ($celsius, $fahrenheit);

$celsius = 20;
while ($celsius <= 45)
{
  $fahrenheit = ($celsius * 9 / 5) + 32; # calculate Fahrenheit
  print "$celsius C is $fahrenheit F.\n";
  $celsius += 1
}
