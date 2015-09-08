#!/usr/bin/perl
# Author: Marcos Pletcher

use strict;

print "Enter y to proceed: ";
$item = <>;
chop $item;

if ($item eq 'y') 
	{ print "You said y\n";}
else { print "You did not say 'y'\n";};

__END__ 


