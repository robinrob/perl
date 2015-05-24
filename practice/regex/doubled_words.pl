#!/usr/bin/env perl

use strict;
use warnings;


# This makes <> return paragraph-sized chunks instead of
# single lines
$/ = ".\n";

while (<>) {
  next unless s{
    \b([a-z]+)((?:\s<<[^>]+>)+)(\1\b)
  }{
    \e[7m$1\e[m$2\e[7m$3\e[m
  }igx;

  # s/^(?:[^\e]*\n)+//mg;   # Remove any unmarked lines.
  # s/^/$ARGV: /mg;         # Ensure lines begin with filename.

  print;
}
