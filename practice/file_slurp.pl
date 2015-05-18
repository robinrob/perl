#!/usr/bin/env perl

use strict;
use warnings;

# Enter 'file-slurp' mode
undef $/;

# 'Slurp' up the first file given on the command line
my $text = <>;

print "$text\n";
