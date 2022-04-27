#!/usr/bin/perl
use warnings;

#Test 1: loops.pl
#	Write a perl program that demonstrates how 2 different kinda os loops work.

print "   Welcome to loops.pl!\n";
print "--------------------------\n";

@array = 1..5;

$i = 0;
while ($i < 5){
	print "$array[$i] \n";
	$i++;
}

$i = 0;

do{
	print "hi\n";
	$i++;
}while($i < 5);

print "--------------------------\n";
