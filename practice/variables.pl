#!/usr/bin/env perl

use strict;
use warnings;

my ($celsius, $fahrenheit);

$celsius = 30;
$fahrenheit = ($celsius * 9 / 5) + 32;  # calculate Fahrenheit
print "$celsius C is $fahrenheit F.\n"; # report both temperatures
