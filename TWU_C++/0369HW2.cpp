#include <iostream>
#include <unistd.h>
using namespace std;

int main ()
{
	cout << "+---------------------------------------------------+\n";
	cout << "|         Computer Science and Engineering          |\n";
	cout << "|          CSCE 1030 - Computer Sccience 1          |\n";
	cout << "|   Kara Kohutek   kak0369  KaraKohutek@my.unt.edu  |\n";
	cout << "+---------------------------------------------------+" << endl << endl;
	
	enum direction {horizontal = 'H', vertical = 'V'};
	char direction;
	char replay;
	const int num = 15;
	int height, i, j, k, l, m, n;
	
	do{
		cout << "Enter height of structure: ";
		cin >> height;
		cout << "Which direction? H for horizontal, V for vertical: ";
		cin >> direction;
	
		switch(direction){
		case 'H':
			for(i = 1; i <=  height; ++i){
				j = height - i;
				k = i;
				m = k;
				for(n = 1; n < height; ++n){
					cout << " ";
				}
				while(j > 0){
					cout << " ";
					j = j - 1;
				}
				while(k > 0){
					cout << "*";
					k = k -1;
				}
				while(m > 1){
					cout << "*";
					m = m - 1;
				}
				cout << " " << endl;
				//sleep(1);
				//cout << "\033[2J\033[1;1H";
			}
			break;
		case 'V':
			//for(l = 0; l < height; ++l){
			//	n = l;
				for(n = 0; n < height; ++n){
					cout << " " << endl;
				}
				for(i = 1; i <= height; ++i){
					j = height -i;
					k = i;
					m = k;
					while(j > 0){
						cout << " ";
						j = j - 1;
					}
					while(k > 0){
						cout << "*";
						k = k - 1;
					}
						while(m > 1){
						cout << "*";
						m = m - 1;
					}
					cout << " " << endl;
				}
			//	sleep(1);
			//	cout << "\033[2J\033{1;1H";
			//}
			break;
		default:
			cout << "That is not an optional directio." << endl;
		}
		
		cout << "Do you want to replay? (y/n) ";
		cin >> replay;

	}while(replay == 'y');
 
	return 0;
}
