#!/usr/bin/env perl

use strict;
use warnings;

s!<emphasis>([0-9]+(\.[0-9]+){3})</emphasis>!<inet>$1</inet>!