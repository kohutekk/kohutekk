#include <iostream>
using namespace std;

int main()
{
	//Below is the header
	cout << "Author:         Kara Kohutek (KaraKohutek@my.unt.edu)\n";
	cout << "Date: 		February 19, 2019\n";
	cout << "Instructor: 	Dr.Helsing & Dr.Shrestha\n";
	cout << "Description:	In part C of Lab 5, we are trying to show\n";
	cout << "		the minimum number that is entered in \n";
	cout << "		during the 10 trys the user has.\n";
	//initializing the variables and the constant
	int number;
	int minimum;
	const int N = 10;
	//prompting the start of the program
	cout << "Enter number: ";
	cin >> minimum;
	//the rest of the loop
	for (int i = 1; i < N; ++i)
	{
		cout << "Enter number: ";
		cin >> number;
		if(number <= minimum){
			//this replaces the minimum number as we go if the number is less then the current minimum
			minimum = number;
		}
		
	}
	//this ends the program by stating the ending minimum
	cout << "Minimum number: " << minimum << endl;
	
	return 0;
}
