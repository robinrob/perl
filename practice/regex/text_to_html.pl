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


# This will be used multiple timeso
# This introduces Perl’s qr operator. It’s similar to the m and s operators
# in that it takes a regular expression
# (i.e., used as qr/···/, just like m/···/ and s/···/···/), but rather than
# immediately applying it to some text in search of a match, it converts the 
# regex provided into a regex object, which you can save to a variable.
#
# ####################################################################
# This makes Perl a good language to use for building a regex library!
# ####################################################################
my $HostnameRegex = qr/[-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info)/i;


# 'Linkify' email addresses
# /i option performs case-insensitive search
# /x means ignore whitespace in the regex itself - so that it can be
# formatted nicely over multiple lines
$text =~ s{
  \b
    # Capture the address to $1
    (
      \w[-.\w]* # username
      \@
     $HostnameRegex
    )
  \b
}{<a href="mailto:$1">$1<\/a>}gix;

# 'Linkify' http URLs
$text =~ s{
  (
    http://$HostnameRegex
    (
      # Note the escaped Perl interpolation symbols @ and $
      [-a-z0-9_:\@&?=+,.!/~*'%\$]+ # optional path
    )?
    (?<![,])
  )
}{<a href="$1">Link!</a>}gix; 

print "$text\n";
