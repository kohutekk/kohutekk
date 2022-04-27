#!/usr/bin/perl
use warnings;

#09/26/2019   subs.pl
#Write a perl program that demonstrates how subroutines work.

print "                     Welcome to subs.pl! \n";
print "--------------------------------------------------------------\n";

#defining subs
sub def {
	print "   Subroutines (aka Subs) portions out a particular part of the\n";
	print "code so that it is easier to use and manipulate though out the code. \n";
}

sub input{
	print "Enter in a verb: ";
	chomp($foo = <STDIN>);
	return $foo;
}

sub ing {
	$foo = shift(@_);
	$bar = $foo . "ing";
	return $bar
}

#printing a sub
print "This is what a sub is defined for me:  \n";
def;

#defining a sub
print "\n";
$verb1 = input;
$verb2 = input;
$verb3 = input;
$verb4 = input;

#using a sub to edit a variable
$verb3 = ing("$verb3");
$verb4 = ing("$verb4");

#applying the information
print "\n";
print "   You know how to $verb1, and maybe even $verb3.\n";
print "So why are you $verb4 when you can $verb2. \n";

print "--------------------------------------------------------------\n";
print "                          The End!\n";





