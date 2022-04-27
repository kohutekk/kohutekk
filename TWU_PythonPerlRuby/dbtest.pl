#!/usr/bin/perl
use DBI;

#10/29/2019   dbtest.pl
#Write a Perl program to connect to the foo database on the VPS using the Perl
#DBI module and print out the results of the two queries. Run on the data table
#in the foo database. The username for the foo database is student and the password
#is Welcome1!

$dsn = "DBI:mysql:foo";
$usr = "student";
$pas = "Welcome1!";
$bbh = DBI->connect() or die "Connection Failed $!\n";

if(!$dbh){
	DBI->errstr()";
}
else{
	print;
}

$sth = $dbh->prepare()or die "prepare statement failed: $dbh->errstr()";
$sth->execute() or die "execution failed: $dbh->errstr()";

while(@row = $sth->fetchrow_array){
	print "@row\n";
}
my $sth = $dbh->prepare() or die "prepare statement failed: $dbh->errstr()";
$sth->execute() or die "execution failed:$dbh->errstr()";

while(@row = $sth->fetchrow_array{
	print "@row\n";
}
$dbh->disconnect;
