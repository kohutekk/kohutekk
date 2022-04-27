#!/usr/bin/perl

print "        Welcome to Signup.pl        \n";
print "------------------------------------\n";

print "Here is your current sign up list: \n";

open(INFILE, '<', 'Signup.txt') || die("We couldn't find the file.\n");
$i = 0;
while(chomp($line = <INFILE>)){
	$i++;
	print "$i) $line\n";
}
close(INFILE);

print "\nDo you want to add a name? Y or N\n";
chomp($add = <>);

if($add eq 'N'){
	print "Have a nice day!\n";
}
elsif($add ne 'Y' && $add ne 'N'){
	print "That is not an answer. Goodbye!\n";
}
else{
	print "What name do you want to add? \n";
	chomp($name = <>);

	open(OUTFILE, '>>', 'Signup.txt') || die("We couldn't find the file.\n");
	print OUTFILE "$name\n";
	close OUTFILE;

	print "Thank You. $name has been added!\n";
}

