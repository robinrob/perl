#!/usr/bin/env perl

use strict;
use warnings;

if (1 < 2) { print "True\n"; }

if (2 > 1) { print "True\n"; }

if (1 == 1) { print "True\n"; }

if (1 != 2) { print "True\n"; }

# String comparisons use string operators:

if ("1" < "2") { print "True\n"; }

if ("2" < "1") { print "True\n"; }

if ("1" == "1") { print "True\n"; }

if ("1" != "2") { print "True\n"; }
