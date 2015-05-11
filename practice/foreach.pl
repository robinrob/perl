#!/usr/bin/env perl

use strict;
use warnings;


# Exactly the same as 'for', but 'for' is ambiguous because of other form of
# 'for' in Perl

foreach(1..3) {
  print "$_\n";
}
