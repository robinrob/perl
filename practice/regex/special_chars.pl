#!/usr/bin/env perl

use strict;
use warnings;


my $str = 'Róbîn';

if (my @matches = ($str =~ m/('ó')/)) {
  print "match: $matches[0]\n";
}
