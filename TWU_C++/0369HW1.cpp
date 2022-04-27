#include <iostream>
#include <cmath>
using namespace std;
//I'm telling the program to use certain libraries that are listed above so I am able to code the appropriately.
int main()
{ 
	cout << "+----------------------------------------------+" << endl;
	cout << "|       Computer Science and Engineering       |" << endl;
	cout << "|        CSCE 1030 - Computer Science I        |" << endl;
	cout << "|  Kara Kohutek  0369  KaraKohutek@my.unt.edu  |" << endl;
	cout << "+----------------------------------------------+" << endl;
	//The lines above is printing a complete header to the user with the programers name email and what class.
	const double accelFromGravity = 9.8;
	const double pi = 3.14159;
	long buoyantForce; 
	double volume, liquidDensity, radius;
	//This section of code is declareing all of the variables and constants needed for the rest of this program.
	cout << "Please enter the density of the liquid: ";
	cin >> liquidDensity;
	cout << "Please ender the buoyant force of the object: ";
	cin >> buoyantForce;
	//I am prompting the user to endter in the needed information above.
	volume = buoyantForce / (accelFromGravity * liquidDensity);
	radius = (3 * volume)/(4 * pi);
	radius = cbrt(radius);
	//Above is where I calculate the needed information using the "cmath" library.
	volume = floor(volume * 1000 + 0.5)/ 1000;
	radius = floor(radius * 100 + 0.5)/ 100;
	//Now I have it rounding the information correctly before I print it to the user.
	cout << "The volume of the sphere is " << volume << " meters cubed" << endl;
	cout << "The radius of the sphere is " << radius << " meters" << endl;
	//Finally I have it print out the right calculations of the volume and radius to the user and ending the program.
}
