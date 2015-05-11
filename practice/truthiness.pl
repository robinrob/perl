#!/usr/bin/env perl

use strict;
use warnings;

if (1) {
  print "1 is true\n";
}

if (0) {
  print "0 is true\n";
}

if ('a') {
  print "'a' is true\n";
}

if ("a") {
  print "\"a\" is true\n";
}

if ((1)) {
  print "(1) is true\n";
}

if ((0)) {
  print "(0) is true\n";
}

if (()) {
  print "() is true\n";
}


sub test($val) {
  if (@val[1]) {
    print($val, " is true\n");
  }
  else {
    print $val, " is true\n";
  }
}

test(1);
