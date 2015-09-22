#!/usr/bin/perl
# Passing Through @ARGV

# Prints command line arguments, one per line.
while($itm = shift @ARGV) {
    print "$itm.\n";
} 

# Prints command line arguments, one per line in backwards
while($itm = pop @ARGV) {
    print "$itm.\n";
} 