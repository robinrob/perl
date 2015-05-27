#!/usr/bin/env perl

use strict;
use warnings;


#my $str = "robin\nandrew\nbollocks\nwanker\nsmith";
my $str = "--001a11c31f04844ca30515f8aa75\nContent-Type: text/plain; charset=UTF-8\nwanker\n--001a11c31f04844ca30515f8aa75\nContent-Type: text/html; charset=UTF-8";

$str =~ m/^--[0-9a-z]{28}\n(.+)/ms;

print "$1\n";
