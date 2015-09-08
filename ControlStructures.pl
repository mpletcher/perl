#!/usr/bin/perl
# Author: Marcos Pletcher


@fruits = ("apples", "blackberries", "blueberries", "grapes");

# foreach goes through each line of an array
foreach $chunk (@fruits)	# goes through each line of an array. $chunk is just the mane of my variable
{
	print "$chunk\n"
}

print "\n"; # Blank line

# For loop
for ($x = 0; $x < 10; $x++) {	# Increments $x before repeating
	print "$x\n";
}
