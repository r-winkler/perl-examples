#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $inputFile = "text.txt";
open(my $inputFh, '<', $inputFile) or die "Could not open file '$inputFile' $!";

my $outputFile = 'output.txt';
open(my $outputFh, '>', $outputFile) or die "Could not open file '$outputFile' $!";

my $lineCounter = 1;
my $wordCounter = 0;

while(1) {
    my $line = readline $inputFh;
    last unless defined $line;

    # process the line
    print $outputFh $lineCounter.") ".$line;
    $lineCounter++;

    # count words in line
    my @text_words = split(/\s+/, $line);
    $wordCounter += scalar(@text_words);
}

print "Number of words in file: ".$wordCounter;

close $inputFh;
close $outputFh;


