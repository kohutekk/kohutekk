#!/usr/bin/perl
use warnings;

#madlib.pl 09/17/2019
#   Write a perl program that acts as a madlib. The program should take in at
#least five nouns, verds, adjectives, or adverbs and place them within a story 
#to create a crazy mixed-up wacky amusing whatever story.

print "            Welcome to madlib.pl\n";
print "-----------------------------------------------\n";
print "   Write responces to different types of words,\n";
print "so that I can turn it into a madlib.\n\n";

print "Enter a noun: ";
chomp($noun1 = <STDIN>);

print "Enter a noun: ";
chomp($noun2 = <STDIN>);

print "Enter another noun: ";
chomp($noun3 = <STDIN>);

print "Enter a plural noun: ";
chomp($nouns1 = <STDIN>);

print "Enter a second plural noun: ";
chomp($nouns2 = <STDIN>);

print "Enter a third plural noun: ";
chomp($nouns3 = <STDIN>);

print "Enter a fourth plural noun: ";
chomp($nouns4 = <STDIN>);

print "Enter another plural noun: ";
chomp($nouns5 = <STDIN>);

print "Enter one more plural noun: ";
chomp($nouns6 = <STDIN>);

print "Enter an adjective: ";
chomp($adj1 = <STDIN>);

print "Enter an adjective: ";
chomp($adj2 = <STDIN>);

print "Enter another adjective: ";
chomp($adj3 = <STDIN>);

print "Enter in a verb: ";
chomp($verb1 = <STDIN>);

print "-------------------------------------------------\n\n";

print "                TURKEY DINNER!\n";
print "   I spent last summer on my grandfather's $adj3 \n";
print "farm. He raises $nouns6 for local food $nouns5. \n";
print "He also grows corn on the $noun3, $adj2 lettuce \n";
print "and lima $nouns4. My favorite place to $verb1 on \n";
print "the farm is the $adj1 house where grandfather keeps \n";
print "his $nouns3. But when I visit in November, there \n";
print "are no $nouns2! They are all gone! I anxiously \n";
print "await at the table that Thanksgiving. I see the \n";
print "corn on the $noun2 and even the lima $nouns2. I am \n";
print "relieved when grandma brings out a $noun1 for \n";
print "Thanksgiving dinner!\n\n";

