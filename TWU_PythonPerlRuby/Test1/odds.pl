#!/usr/bin/perl
use warnings;

#Test 1: odds.pl
#	Write a perl program that chesks to see if a user provided (not hard coded)
#number is odd. If it is odd, the program should print "How odd." If the number is not
#odd, it should print "Let's call it even."

print " Welcome to odds.pl!\n";
print "---------------------\n";

print "Enter in a number: ";
chomp ($number = <>);

if ($number % 2 != 0){
	print "How odd.\n";
}
else{
	print "Let's call it even\n";
}

print "---------------------\n";
