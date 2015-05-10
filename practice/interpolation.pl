#!/usr/bin/env perl

use strict;
use warnings;


my $content = "bollocks";
print("The content is: $content", "\n");

# Interpolation of an array into a string is differentt
my @content = ("this", "is", "bollocks");
print("David Cameron said about the content of his party's manifesto: @content", "\n");
