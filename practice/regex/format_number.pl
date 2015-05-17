#!/usr/bin/env perl

use strict;
use warnings;


my $str = "robin has 123456789 pounds";

$str =~ s/(?<=(?<!\w)?\d)(?=(?:\d{3})+(?!\w))/,/g;

print "$str\n"
