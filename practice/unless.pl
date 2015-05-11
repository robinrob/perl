#!/usr/bin/env perl

use strict;
use warnings;


# unless can be used as a conditional or statement modifier:

unless (0) {
  print "False\n";
}

print "False\n" unless 0;
