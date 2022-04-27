#!usr/bin/perl
use warnings;

#10/11/2019   regex.pl
#   Write a perl program that loops through a array of strings and change all letters
#"A's" to letter "Z's". It should print it the array out before and after the change.

print "      Welcome to tegex.pl! \n";
print "--------------------------------\n";

@array = qw(hey, i, just, meet, you, and, this, is, crazy, now, here, is, my, number, so, call, me, maybe);
print "This is the array before:\n";
print "@array\n\n";

foreach $word(@array){
	$word =~ s/a/z/g;
}
print "This is the array after:\n";
print "@array\n";

print "--------------------------------\n";

