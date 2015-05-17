#!/usr/bin/env perl

use strict;
use warnings;


my $str = "robin has 123456789 pounds";

$str =~ s/(?<=\b?\d)(?=(?:\d{3})+\b)/,/g;

print "$str\n";

# Alternative if \b is not available:
$str = "robin has 123456789 pounds";

$str =~ s/(?<=(?<!\w)?\d)(?=(?:\d{3})+(?!\w))/,/g;

print "$str\n";

# Matches when followed by (not digit) on right-hand side
$str = "robin's natural frequency is 123456789Hz";

$str =~ s/(?<=\b?\d)(?=(?:\d{3})+(?!\d))/,/g;

print "$str\n";

# Method not using positive look-behind:
$str = "robin's natural frequency is 123456789Hz";

$str =~ s/(\d)(?=(?:\d{3})+(?!\d))/$1,/g;

print "$str\n";

