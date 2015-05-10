#!/usr/bin/env perl

use strict;
use warnings;

print('one', 'two', 'three', 'four');
print "\n";

print(('one', 'two', 'three', 'four'));
print "\n";

print(('one', 'two'), ('three', 'four'));
print "\n";

print(qw(one two three four));
print "\n";

print(qw(one two), q(three), 'four');
print "\n";

print qw(
      one     two
      three   four
), "\n";

print qw/one two three four/;
print "\n";

print qw|one two three four|;
print "\n";
