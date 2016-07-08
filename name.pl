#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# (1) quit unless we have the correct number of command-line args
my $num_args = $#ARGV + 1;

if ($num_args != 2) {
    print "\nUsage: name.pl first_name last_name\n";
    exit;
}

# (2) we got two command line args, so assume they are the
# first name and last name
my $first_name=$ARGV[0];
my $last_name=$ARGV[1];

print "Hello, $first_name $last_name\n";

