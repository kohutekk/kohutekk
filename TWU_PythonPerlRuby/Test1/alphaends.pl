#!/usr/bin/perl
use warnings;

#Test 1: alphaends.pl
#	Write a perl program that prompts a user for a letter and then determines if that
#letter is at the end of the English alphabet (a or z). if it is at the end of the alphabet,
#then print "You are at the end of the alphabet." Otherwise, print "You are stuck in the
#middle of the alphabet."

print "       Welcome to alphaends.pl\n";
print "---------------------------------------\n";

print "Enter in a lower case letter: ";
chomp($letter = <>);

if ((lc($letter) eq "a")|| (lc($letter) eq "z")){
	print "You are at the end of the alphabet.\n";
}
else{
	print "You are stuck in the middle of the alphabet.\n";
} 

print "---------------------------------------\n";
