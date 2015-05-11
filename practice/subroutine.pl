#!/usr/bin/env perl

use strict;
use warnings;


sub routine(@args) {
  print $args[0];
}

routine("robin");
