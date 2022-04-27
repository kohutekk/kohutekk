#!/usr/bin/perl
use warnings;

#09/24/2019   rollercoaster.pl
#Write a perl program that uses a loop/loops to print out the output of a very boring 
#rollercoaster. It should print out the word "click" four times and the word "wee" three
#times.

print " Welcome to the rollercoaster! \n";
print "-------------------------------\n";

for($i = 0, $i < 4, $i++){
	print "click \n";
}

for($i = 0, $i < 3, $i++){
	print "wee\n";
}

print "-------------------------------\n";

$i = 0;
while($i < 7){
	if($i < 4){
		print "click\n";
	}
	if(($i > 3) && ($i < 7)){	
		print "wee\n";
	}
	$i++;
}

print "-------------------------------\n";

