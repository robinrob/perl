#!/usr/bin/env perl

use strict;
use warnings;

my %hash = ("one", 1, "two", 2);
print "one: ", $hash{"one"}, "\n";

%hash = ("one" => 1, "two" => 2);
print "one: ", $hash{"one"}, "\n";

%hash = reverse(%hash);
print "1: ", $hash{1}, "\n";

$hash{"three"} = 3;
print "three ", $hash{"three"}, "\n";

delete $hash{"three"};
print "hash: ", %hash, "\n";

print "keys: ", keys %hash, "\n";

print "values ", values %hash, "\n";
