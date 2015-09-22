#!/usr/bin/perl
# Name: calendar.pl
# Author: Marcos Pletcher
# Purpose: 
# Date: Sep 20, 2015

use integer;
	# gives a numbe for each month
	%seqMonths = (
		 "january" => 1,  
		 "february" => 2,  
		 "march" => 3,  
		 "april" => 4,
		 "may" => 5,  
		 "june" => 6,  
		 "july" => 7,  
		 "august" => 8,
		 "september" => 9,  
		 "october" => 10, 
		 "november" => 11, 
		 "december" => 12,
	);
	# Stores months
	@months = ("",
	  	" JAN", 
		" FEB",   
		" MAR",   
		" APR",
		" May",    
		" JUN",    
		" JUL",  
		" AUG",
	 	" SEP",  
	 	" OCT", 
	 	" NOV", 
	 	" DEC",
	);

	@dayMonths = (0,31,28,31,30,31,30,31,31,30,31,30,31); # array stores month days
	die "Usage: cal.pl [month] [year]\n" if $#ARGV > 1;

	($t,$t,$t,$t,$mon1,$year1,$t,$t,$t) = localtime(time);
	$mon = (defined $ARGV[0]) ? $ARGV[0] : $mon1+1;

	if ($mon =~ /^ *\d{1,2} *$/) {
	  die "Month must be between 1 and 12!\n" unless ($mon>=1 && $mon<=12);
	} else {
	  $mon = $seqMonths{lc(substr($mon,0,3))};
	  die "Wrong month name: $ARGV[0]!\n" unless defined($mon);
	}

	$year = (defined $ARGV[1]) ? $ARGV[1] : $year1+1900;
	die "Wrong year: $year!\n" unless $year =~ /^ *\d{4} *$/;
	
	$year = int($year);
	die "Year must be greater than 0!\n" unless $year>0;
	
	print "\n\t$months[$mon] $year\n\nSun  Mon  Tue  Wed  Thu  Fri  Sat\n";
	
	$dayMonths[2] = 29 if ($year%400==0) || (($year%4==0) && ($year%100!=0));
	--$year;
	$setCalendar = 1 + $year*365 + $year/4 - $year/100 + $year/400;

	
	for ($varCal = 1; $varCal < $mon; ++$varCal) {
	  $setCalendar += $dayMonths[$varCal];
	}

	$setCalendar %= 7;
	for ($varCal = 0; $varCal < $setCalendar; ++$varCal) {
	  print "     ";
	}

	for ($varCal = 1; $varCal <= $dayMonths[$mon]; ++$varCal) {
	  printf "%3d  ", $varCal;
	  print "\n" if ($setCalendar + $varCal) % 7 == 0;

	}
	print "\n\n";