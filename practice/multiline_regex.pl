#!/usr/bin/env perl

use strict;
use warnings;

cat foo | perl -e 'while(<>){$all .= $_}
  while($all =~ /^(foo[^\n]*\nbar[^\n]*\n)/m) {
  print $1; $all =~ s/^(foo[^\n]*\nbar[^\n]*\n)//m;
}'
