#!/usr/bin/env perl

use strict;
use warnings;


# Perl allows to use your own delimiters for regexes:
my $str = "robin smith";
$str =~ s!robin!god!g;
print "$str\n";

# Even this!
$str = "robin smith";
$str =~ s{robin}{amazing}g;
print "$str\n";

$str = "robin smith";
$str =~ s<robin><wtf>g;
print "$str\n";
