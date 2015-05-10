#!/usr/bin/env perl

use strict;
use warnings;


# Scalars are referenced using $
my $value = "scalar";

# Arrays are referenced using @
my @value = ("list", "of", "scalar");

# The two differently-typed values with same name are distinct:
print($value, "\n");
print(@value, "\n");

# Assigning an array to a scalar:
$value = @value;
print($value, "\n");

# Assigning a scalar to an array:
@value = $value;
print(@value, "\n");

my @arr = "robin";
print((@arr), "\n");
print((@arr[1]), "\n");
