#!/usr/bin/perl
use warnings;

#09/24/2019   Pez.pl
#Create a Perl program that acts like a pez dispenser. The program should print out
#the contents of the dispenser/array at the start to show that it is empty. Then
#prompt the user fot 10 pez candies and load them into the dispenser/array showing
#that it is full. And, then it should dispense the candies in the appropriate pez
#way. Finally, it should display the contents of the dispenser/array to show that
#it is empty.

print "  Welcome to your personal Pez candy dispenser!  \n";
print "-------------------------------------------------\n";

@array;

print "Your dispenser is currently empty:\n";
print "   --> @array <-- \n";
print "Enter in 10 pez candies by typing in the color:\n";

$i = 0;
while($i < 10){
	print "--> ";
	chomp($array[$i] = <STDIN>);
	$i++;
}

print "-------------------------------------------------\n";
print "Good job! Here is everything in your dispenser:\n";
print "   --> @array <-- \n\n";
print "Here is how it will dispence your candy:\n";

$i = 10;
while($i > 0){
	pop (@array);
	print "  --> @array <-- \n";
	$i--;
}

print "-------------------------------------------------\n";
print "                   The End\n";

