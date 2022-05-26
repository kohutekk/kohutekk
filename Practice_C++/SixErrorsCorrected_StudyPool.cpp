#include <iostream>
#include <string>
using namespace std;

int main() {
    const int ARR_SIZE = 6;
    string name[ARR_SIZE] = {"Pepperoni","Prosciutto","Vegetarian","Sausage","Supreme","Mozzarella"};
    int sales[ARR_SIZE];
    int worstseller_number, bestseller_number;
    string worstseller_name, bestseller_name;
    
    for(int i = 0; i < ARR_SIZE; i++)
    {
        cout << "Enter sales for " << name[i] << ": ";
        cin >> sales[i];
    }
    
    worstseller_name = bestseller_name = name[0];
    worstseller_number = bestseller_number = sales[0];
    
    for(int i = 1; i < ARR_SIZE; i++)
    {
        if(sales[i] < worstseller_number)
        {
            worstseller_number = sales[i];
            worstseller_name = name[i];
        }
        if(sales[i] > bestseller_number) 
        {
            bestseller_number = sales[i];
            bestseller_name = name[i];
        }
    }
    
    cout << "The best selling pizza is " << bestseller_name << " with the sales of " << bestseller_number << endl; // Display the best selling pizza
    cout << "The worst selling pizza is " << worstseller_name << " with the sales of " << worstseller_number << endl; // display the worst selling pizza

}
