#!/usr/local/bin/perl

# Concat
print "Hello " . " world\n";

# Scalar variable holds only one value at a time
$GREETING = "Hello world stored in a variable\n";

print $GREETING;

# Input content from keyboard
# Simple print method
print "Enter a word: ";
$line = <STDIN>;
print STDOUT $line;

# Both STDIN and STDOUT are optional
print "How old are ou? ";
$input = <>;	# read a line from the keyboard.
chop $input;	# get rid of the Return character.
print "You are $input years old.\n";

# If statement
if ( $input < 0 || $input > 120 ) {
	print "I don't believe you!\n"; }
else {
	print "You say you are $input years old.\n"; };

exit;
