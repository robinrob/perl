#!/usr/bin/env perl

use strict;
use warnings;


undef $/;

my $text = <>;

$text =~ s/&/&amp;/g;
$text =~ s/</&lt;/g;
$text =~ s/>/&gt;/g;

# In `m` (multiline) mode, ^ and $ refer to start/end positions
# on lines, not strings. When the beginning of a line is immediately
# followed by the end of a line, this indicates a blank line, which
# is therefore two newlines in a row: \n\n
$text =~ s/^\s*$/<p>/mg;

# 'Linkify' email addresses
$text =~ s{
  \b
    # Capture the address to $1
    (
      \w[-.\w]* # username
      \@
      [-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info) # hostname
    )
  \b
}{<a href="mailto:$1">$1<\/a>}gix;

print "$text\n";
