#!/usr/bin/perl
use warnings;

#10/29/2019   obfuscate.pl
#   Download/Pull the data.tar.gz file down to your repo and extract it to get the 
#uncompressed data.csv file.  Write a perl program that obfuscates/de-identifies the 
#potential private HIPPA data in the csv and generates a new csv file that contains the 
#obfuscated/de-identified data with the important data re-arranged so that the DiagCode and 
#the PayerCode are the 2nd and 3rd items in each row.

open(INFILE, '<', 'data.csv') || die("could not find file: $! \n");
while(chomp($line = <INFILE>)){
	@array = split /,/, $line;
	print "line:\n";
	print "   @array[0,8,9]\n";
	print "   @array[1,2,3,4,5,6,7]\n";
}
close(INFILE);



