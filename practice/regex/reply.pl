#!/usr/bin/env perl

use strict;
use warnings;

# To: elvis@hh.tabloid.org (The King)
# From: jfriedl@regex.info (Jeffrey Friedl)
# Subject: Re: Be seein' ya around
#
# On Thu, Feb 29 2007 11:15 The King wrote:
# |> Sorry I haven't been around lately. A few years back I checked
# |> into that ole heartbreak hotel in the sky, ifyaknowwhatImean.
# |> The Duke says "hi".
# |>         Elvis

# MIME-Version: 1.0
# Received: by 10.28.228.130 with HTTP; Wed, 13 May 2015 08:57:20 -0700 (PDT)
# Date: Wed, 13 May 2015 16:57:20 +0100
# Delivered-To: robin@mrrobinsmith.com
# Message-ID: <CANBj--RE2ALy5NuzW5q=Hk-edg6T=bkRqA-w4ZwnCpLweTPnYg@mail.gmail.com>
# Subject: boom
# From: Robin Smith <robin@mrrobinsmith.com>
# To: Robin Smith <robin@mrrobinsmith.com>
# Content-Type: multipart/alternative; boundary=001a11c31f04844ca30515f8aa75
#
# --001a11c31f04844ca30515f8aa75
# Content-Type: text/plain; charset=UTF-8
#
# wanker
#
# --001a11c31f04844ca30515f8aa75
# Content-Type: text/html; charset=UTF-8
#
# <div dir="ltr"><br></div>
#
# --001a11c31f04844ca30515f8aa75--


my ($recipient, $sender, $subject, $body, $date);

while (my $line = <>) {
  # print $line;
  if ($line =~ m/^From: (.+)/) {
    $recipient = $1;
    print "recipient: $recipient\n";
  }
  if ($line =~ m/^To: (.+)/) {
    $sender = $1;
    print "sender: $sender\n";
  }
  if ($line =~ m/^Subject: (.+)/) {
    $subject = $1;
    print "subject: $subject\n";
  }
  if ($line =~ m/^Date: (.*)/i) {
   $date = $1;
   print "date: $date\n";
  }
  # if ($line =~ /^--[0-9a-z]{28}\nContent-Type:[^\n]+(.+)--[0-9a-z]{28}/ms) {
  # if ($line =~ m/Received: .+ (Sun|Mon|Tue|Wed|Thu|Fri|Sat), ([0-9]{2}), ([a-zA-Z]{3}) ([0-9]{4}) ([0-9]{2}){3} ([-+][0-9]{4}) (\([A-Z]{3})\)/){
  #   my $dayName = $1;
  #   my $dayNum = $2;
  #   my $monthName = $3;
  #   my $year = $4;
  #   my $time = $5;
  #   my $time_diff = $6;
  #   my $time_zone = $7;
  #   print "$time_zone\n";
  # }
}
