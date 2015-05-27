#!/usr/bin/env perl

use strict;
use warnings;

$/ = ".\n";
while (<>) {
  next if !s/\b([a-z]+)((?:\s|<[^>]+>)+)(\1\b)/\e[7m$1\e[m$2\e[7m$3\e[m/ig;
  s/^(?:[^\e]*\n)+//mg;   # Remove any unmarked lines.
  s/^/$ARGV: /mg;         # Ensure lines begin with filename.
  print;
}

