#!/usr/bin/perl
# Author: Marcos Pletcher
# Programs prompts the user to input a password and won't continue until it is the correct password

print "Enter your password: ";	# prompts the user to input a password
$password = <>;					# stores it in a variable
chop $password;					# erases the newline at end

while ($password ne "marcos") {
	print "This is not a valid password. Please, re-type your current password: ";
	$password = <>;				# reask for password again
	chop $password;					# erases the newline at end
}

