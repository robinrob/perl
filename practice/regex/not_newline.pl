#!/usr/bin/env perl

use strict;
use warnings;


my $str = "robin\nandrew\nsmith";

$str =~ /([^\n]+)/ms;
#$str =~ /robin\n(.+)\nsmith/ms;

print "$1\n";
