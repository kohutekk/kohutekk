#!/usr/bin/perl
use warnings;

#09/26/2019   Fizzbuzz.pl
#   Write a perl program that prompts a user for a number and checks that number against 
#three possibilities. If the number is divisible by 3, it should print fizz, if it is 
#divisible by 5 it should print buzz, and if its divisible by 3 and 5 it should print
#fizzbuzz. It should do nothing if none of those conditions are met.

print "     Welcome to Fizzbuzz.pl! \n";
print "---------------------------------\n";
print "Enter in a number: ";

$number = 0;
chomp ($number = <STDIN>);

print "\n";

if ($number % 3 == 0){
	print "fizz";
}
if ($number % 5 == 0){
	print "buzz";
}

print "\n";
print "---------------------------------\n";




