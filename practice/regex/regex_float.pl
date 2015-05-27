#!/usr/bin/env perl

use strict;
use warnings;

my $float;

print "Enter a float: ";
$float = <STDIN>; # this reads one line from the user

chomp($float);    # this removes the ending newline from $celsius

if ($float =~ m/^[-+]?[0-9]+(\.[0-9]*)?$/) {
    print "Value is a float!\n"
}
else {
    print "Value is not a float!\n";
}


