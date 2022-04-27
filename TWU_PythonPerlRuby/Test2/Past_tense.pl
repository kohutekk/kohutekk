#!/usr/bin/perl

print "      Welcome to Past_tense.pl     \n";
print "-----------------------------------\n";

print "Here is a text file with 'ing's: \n";

$i = 0;
open (INFILE, '<', 'Past_tense1.txt') || die("We couldn't find the file.\n");
while(chomp($line = <INFILE>)){
	print "$line\n";
	$info[$i] = $line;
	$i++;
}
close(INFILE);
print "-----------------------------------\n";

print "\nNow we change all of the 'ing's for 'ed's. \n";

for($h = 0; $h < $i; $h++){
	$info[$h] =~ s/ing/ed/g;
	print "$info[$h]\n";
}

open (OUTFILE, '>', 'Past_tense2.txt') || die("We couldn't find the 2nd file.\n");
for($h = 0; $h < $i; $h++){
	print OUTFILE "$info[$h]\n";
}
close OUTFILE;

print "-----------------------------------\n";
print "\nIt has been printed in 'Past_tense2.txt'\n";
print "Goodbye!\n";
