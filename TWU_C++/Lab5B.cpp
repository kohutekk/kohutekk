#include <iostream>
using namespace std;

int main(){
	// below is header 
	cout << "Author:         Kara Kohutek (KaraKohutek@my.unt.edu)\n";
	cout << "Date:		February 19, 2019\n";
	cout << "Instructor:	Dr.Helsing & Dr.Shrestha\n";
	cout << "Description:	Part B of Lab 5 is about using enumeration\n";
	cout << "		inside a do-while loopbeing able to help the\n";
	cout << "		user add as much as they want to an integer\n";
	cout << endl;
	//initializing variables
	enum choice {Stop = 'S', Add = 'A'};
	int integer = 0;
	int sum = 0;
	char choice = 'A';
	//do while loop 
	do{
		cout << "Enter integer: ";
		cin >> integer;
		sum += integer;
		cout << "Enter A to keep adding, S to stop: ";
		cin >> choice;
	}while(choice == Add || choice == 'a');
	//ending outputs
	switch(choice){
		case 'S':
			cout << "Sum is: " << sum << endl;
			break;
		case 's':
			cout << "Sum is: " << sum << endl;
			break;
		default:
			cout << "Incalid key entered."<< endl;
	}	
	
	return 0;
}
