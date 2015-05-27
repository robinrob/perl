#!/usr/bin/env perl

use strict;
use warnings;


my $reply = '0124932432';

if ($reply =~ m/^[0-9]+$/) {
    print "Only digits!\n";
} else {
    print "Not only digits\n";
}


