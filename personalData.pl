#!/usr/bin/perl
# Name: personalData.pl
# Author: Marcos Pletcher
# Purpose: Program creates external files (txt, HTML) and prompts the user to enter personal information. Afterwards, conditional routenes validate inputted values.
# Addicionally, it interacts with its user and prints information related to her/his created file.
# Date: Sep 20, 2015

use strict; 
use warnings;
use Cwd 'abs_path'; # allows to print my file path
use File::stat; # provides statistics on files
use Fcntl; # module improves file creation and other intereations

# Output initial greeting.
print "Let's create a simple file.\n\n";

FIRSTNAME:	# Subroutine allows to validate typed content
print "Please, enter your first name: "; # prompts user for input
my $firstName = <>;    
chomp $firstName;	# Chops off empty characters
	# If condition validates entered items
 	if ($firstName =~ m/[^a-zA-Z]/ || $firstName eq "") {
  	print "\n Invalid name entered. Please, try again. \n";
  	goto FIRSTNAME;
 	}

LASTNAME:
print "Please, enter your last name: ";
my $lastName = <>;    # prompts user for input
chomp $lastName;
  # If condition validates entered items
 	if ($lastName =~ m/[^a-zA-Z]/ || $lastName eq "") {
  	print "\n Invalid name entered. Please, try again. \n";
  	goto LASTNAME;
 	}


# writes the current date and time to your file
my $timestamp = localtime(time);


print "\n$firstName, thank you for collaborating. Below, there's the path of your files:\n";
print abs_path($0); # $0 means my program 

open( DATAFILE, '>>personaldata.txt' );    #creates file personalData.txt
print DATAFILE "Name: $firstName\n";
print DATAFILE "Last Name: $lastName\n";
print DATAFILE "\nTime: $timestamp\n";
close(DATAFILE);

# Creates a HTML file and includes inputted content 
print "content-type: text/html \n\n"; #my header
sysopen (HTML, 'index.html', O_RDWR|O_TRUNC|O_CREAT, 0755); # funtion creates page with required resources and mode
printf HTML "<html>\n"; # prints out HTML markup tags
printf HTML "<head>\n"; 
printf HTML "<title>$lastName Home Page</title>"; 
printf HTML "</head>\n"; 
printf HTML "<body>\n"; 
printf HTML "<p align='center'>Welcome! My name is $firstName.</p>";
printf HTML "</body>\n"; 
printf HTML "</html>\n"; 
close (HTML);

