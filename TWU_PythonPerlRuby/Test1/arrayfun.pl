#!/usr/bin/perl
use warnings;

#Test 1: arrayfun.pl
#	Write a perl program that creates an array, removes the first item, removes
#the last item, adds an item to the end of the array, and changes the 3rd item in 
#the array. Print the contents of the array out to the user at least after initial 
#loading of the array and after all changes have been made to the array.

print " Welocome to arrayfun.pl!\n";
print "--------------------------\n";

@array = 0..9;
print "@array\n";

shift (@array);
print "@array\n";

pop (@array);
print "@array\n";


$array[2] = 100;
print "@array\n";

print "--------------------------\n";

