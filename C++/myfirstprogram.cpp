#include <iostream>
#include <locale.h>
#include <string>
#include <cmath>

using namespace std;

int main() {
	
	setlocale(LC_ALL, "Portuguese");
	
	int num1 = 1;
	int num2 = 2;
	int sum;
	
	sum = num1 + num2;
	cout << sum << endl;

	cout << num1 << " " << num2 << endl;
	
	string nome = "Gabriel";
	cout << "Oi! " << nome << endl;
	
	const double Pi = 3.1415;
	cout << "A constante Pi é igual a " << Pi << endl;
	
//	int num;
//	cout << "Ei " << nome << " escreva um número: ";
//	cin >> num;
//	cout << nome << " o seu número é " << num << endl;
	
	float f1 = 35.45e3;
	double d1 = 12E4;
	cout << f1 << endl;
	cout << d1 << endl;
	
	bool isCodingFun = true;
	bool isFishTasty = false;
	cout << isCodingFun << endl;  // Outputs 1 (true)
	cout << isFishTasty << endl;
	
	char myGrade = 'B';
	cout << myGrade << endl; 
	
	char a = 40, b = 36, c = 41;
	cout << a << b << c << endl;
	
	string firstName = "John ";
	string lastName = "Doe";
//	string fullName = firstName + lastName;
	string fullName = firstName.append(lastName);
	cout << fullName << endl;

	string whatSize = "éttore fofinho";
//	cout << whatSize.size();
	cout << whatSize.length() << endl;
	cout << whatSize[0] << endl;
	cout << whatSize << endl;
	whatSize[0] = 'É';
	cout << whatSize << endl;
	
//	string Name;
//	cout << "Type your full name: \n";
//	getline (cin, fullName);
//	cout << "Your name is: " << fullName << "\n";
	
	cout << max(5, 10) << endl;
	cout << min(5, 10) << endl;
	
	cout << sqrt(64) << endl;
	cout << round(2.6) << endl;
	cout << log(2) << endl;
	
	int day = 8;	
	switch (day){
		case 1:
    		cout << "Monday\n";
    		break;
		case 2:
    		cout << "Tuesday\n";
    		break;
		case 3:
			cout << "Wednesday\n";
    		break;
		case 4:
		    cout << "Thursday\n";
		    break;
		case 5:
		    cout << "Friday\n";
		    break;
		case 6:
		    cout << "Saturday\n";
		    break;
	    case 7:
		    cout << "Sunday\n";
		    break;
		default:
			cout << "Looking forward to the Weekend\n";
	}
	
	int i = 0;
	while (i < 5) {
		cout << i;
		i++;
	}
	
	cout << "\n";
	
	i = 0;
	do {
		cout << i;
		i++;
	}
	while (i < 5);
	
	cout << "\n";
	
	for (int i = 0; i < 5; i++) {
		cout << i;
	}
	
	cout << "\n";
	
	i = 0;
	while (i < 10) {
		cout << i;
		i++;
		if (i == 4) {
			break;
		}
	}
	
	cout << "\n";
	
	i = 0;
	while (i < 10) {
		if (i == 4) {
    		i++;
    		continue;
		}
		cout << i;
		i++;
	}
	
	cout << "\n";
	
	string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
//	cars[0] = "Fiat";
	for(int i = 0; i < 4; i++) {
		cout << i << ": " << cars[i] << "\n";
	}
	
	int myNum[3] = {10, 20, 30};
	
	string food = "Pizza"; // A food variable of type string
	string &meal = food;
	cout << food << "\n";
	cout << meal << "\n"; 
	cout << &food << "\n\n";

	string* ptr = &food;    // A pointer variable, with the name ptr, that stores the address of food
//	string* mystring; //Preferred
//	string *mystring;
//	string * mystring;

	cout << food << "\n"; // Output the value of food	
	cout << &food << "\n"; // Output the memory address of food	
	cout << ptr << "\n"; // Reference: Output the memory address of food with the pointer
	cout << *ptr << "\n";// Dereference: Output the value of food with the pointer
	
	*ptr = "Hamburger"; // Change the value of the pointer	
	cout << *ptr << "\n"; // Output the new value of the pointer
	cout << food << "\n"; // Output the new value of the food variable
	
	
	
	return 0;
}
