#!/usr/bin/perl
use warnings;

#10/08/2019   Calcs2.pl
#   Rewrite Calcs.pl to work using input should be passed to each
#subroutine and the cubroutines should return the result of the 
#operation to the main routine for printing.

sub add{
	$add = $num1 + $num2;
	return $add;
}

sub subtract{
	$sub = $num1 - $num2;
	return $sub;
}

sub multiply{
	$mul = $num1 * $num2;
	return $mul;
}

sub divide{
	$div = $num1 / $num2;
	return $div;
}

sub remander{
	$rem = $num1 % $num2;
	return $rem;
}

print "      Welcome to Calcs2.pl!\n";
print "---------------------------------\n";
print "Enter in a number: ";
chomp($num1 = <>);
print "Enter in another number: ";
chomp($num2 = <>);

$add = add;
$sub = subtract;
$mul = multiply;
$div = divide;
$rem = remander;

print "\n";
print "Adding: 	$add\n";
print "Subtracting:	$sub\n";
print "Multiplying:	$mul\n";
print "Dividing:	$div\n";
print "Remander:	$rem\n";

print "---------------------------------\n";

