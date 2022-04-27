#!/usr/bin/perl

#10/08/2019   fileio.pl
#   Write a perl program that prompts a user for the name of a text file, reads in that 
#file if it exits, displays the contents of the file to the user, prompts a user for some
#input and adds that input to the same text file.


sub printing{
	open(FOO, '<', $file)||die("Could not find file $! \n");
	print "\n   $file looks like this: \n";

	while(chomp($line = <FOO>)){
		print "$line \n";
	}
	close FOO;
	print "\n--------------------------------------------\n";
}


print "          Welcome to fileio.pl!\n";
print "--------------------------------------------\n";

while ($file ne "foo.txt"){
	print "Enter in the foo text file (foo.txt): ";
	chomp($file = <>);
}

printing;

print "Enter in what you want to add to the end of $file: ";
chomp($input = <>);

open(FOO, '>>', $file)||die("Could not find file $! \n");
print FOO "$input \n";
close FOO;

printing;

