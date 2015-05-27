#!/usr/bin/env perl

use strict;
use warnings;



$/ = ".\n";

while (<>) {
  next unless s{
    robin
  }{
    smith
  }igx;

  # s/^(?:[^\e]*\n)+//mg;   # Remove any unmarked lines.
  # s/^/$ARGV: /mg;         # Ensure lines begin with filename.

  print;
}

