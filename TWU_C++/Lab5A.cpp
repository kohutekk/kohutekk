#include <iostream>
using namespace std;

int main() 
{
	//below is my header for this lab
	cout << "Author:         Kara Kohutek (KaraKohutek@my.unt.edu)\n";
	cout << "Date:		February 19, 2019\n";
	cout << "Instructor:	Dr.Helsing & Dr.Shrestha\n";
	cout << "Description:	Part A of Lab 5 takes the number of how\n";
	cout << "		many grades you have, what those grades\n";
	cout << "		are and puts it into a loop that will give\n";
	cout << "		you the average of all the grades.\n";
	//this is my initiating thee variables that I will use in mu code
	int grade;
	int numGrades;
	int count = 0;
	double sum = 0;
	double average;
	//prompting to know how many loops it will use 
	cout << "How many gades will be entered: ";
	cin >> numGrades;
	//this is the start of the loop to take every grade the user has for this program
	while (count < numGrades){
		cout << "Enter grade: ";
		cin >> grade;
		sum += grade;
		count++;
	}
	//this is calculating then printing the average to the user
	average = sum / numGrades;
	cout << "The average is " << average << endl;

	return 0;
}
