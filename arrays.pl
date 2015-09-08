#!/usr/bin/perl
# Author: Marcos Pletcher
# Arrays.pl
# array variable is a list of scalars (ie numbers and strings)
# same format as scalar variables except from an @ symbol

@fruits = ("apples", "blackberries", "blueberries", "grapes");
@colors = ("blue", "yellow", "green", "red");

# Adds elements to an array.
push(@fruits, "avocato", "bananas");

# Removes the last item
$peach = pop(@fruits);	# deletes bananas

# Prints out the entire contents of an array
print join("\n",@fruits),"\n";

print "\n";
# Prints out in a separate line
foreach (@colors) {
  print "$_\n";
}


__END__ 


