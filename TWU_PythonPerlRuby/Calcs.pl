#!/usr/bin/perl
use warnings;

#Due: 09/19/2019 
#   Write a perl program that prompts a user for 2 numbers and performs the five
#standard arithmetic operations in programming. Make sure your program prints out 
#the results of those operations, e.g. 1 + 2 = 3.

print "             Welcome to Calcs.pl\n";
print "-----------------------------------------------\n";
print "   In this program you will enter 2 numbers,\n";
print "and I will attempt to add, subract, multiply,\n";
print "divide, and find the remander of the 2 numbers.\n\n";

print "Enter the 1st number here: \n";
chomp($num1 = <STDIN>);
print "Enter the 2nd number here: \n";
chomp($num2 = <STDIN>);

print "You entered the numbers $num1 and $num2 \n";
print "-----------------------------------------------\n";

$add = $num1 + $num2;
$sub = $num1 - $num2;
$mul = $num1 * $num2;
$div = $num1 / $num2;
$rem = $num1 % $num2;

print "Adding:      $add \n";
print "Subtracting: $sub \n";
print "Multiplying: $mul \n";
print "Dividing:    $div \n";
print "Remander:    $rem \n";

print "-----------------------------------------------\n";
print "                   The End\n";
