#!/usr/bin/perl
# Name: mySorter.pl
# Author: Marcos Pletcher
# Purpose: Reads in an arbitrary number of strings from the command line and displays them sorted alphabetically.
# -r outputs reverse sort. I used it instead of --reverse
# Date: Sep 2, 2015

use strict;
use warnings;	# Warns when it sees something suspicious going on in your program
use Getopt::Long;	# Allows user to deal of control over command line arguments

GetOptions(
    "reverse" => \( my $opt_backwards ),) or die "Error in command line arguments\n";	# Die function raises an exception
	
		@ARGV = sort @ARGV; # holds all arguments entered by the user
		@ARGV = reverse @ARGV if $opt_backwards;

	die "Invalid command line arguments to program. Please supply two or more strings to sort.\n"
    	if @ARGV < 2; # User has to enter two or more strings in order to sort

	print "@ARGV\n"; # Prints out strings


__END__ 


