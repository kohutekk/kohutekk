#!usr/bin/perl
use warnings;

sub greater{
	if($num1 > $num2){
		$greater = $num1;
	}
	elsif($num1 < $num2){
		$greater = $num2;
	}
	else{
		$greater = 0;
	}
	return $greater;
}

print "     Welcome to Gt.pl     \n";
print "--------------------------\n";

print "Enter in two numbers: \n";
print "1) ";
chomp ($num1 = <>);
print "2) ";
chomp ($num2 = <>);


$greater = greater($num1, $num2);

if($greater == 0){
	print "They are equal value of $num1.\n";
}
else{
	print "The greatest number is: $greater\n";
}
