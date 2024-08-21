#include <iostream>
#include <locale.h>
#include <string>
#include <cmath>

using namespace std;

class Car {	// Create a Car class with some attributes
	public:
		string brand;	// Attribute
		string model;	// Attribute
		int year;		// Attribute
		
		int speed(int maxSpeed);	//Method
};

class Car2 {
	public:
		string brand;	// Attribute
		string model;	// Attribute
		int year;		// Attribute
		
		Car2(string x, string y, int z); // Constructor declaration with parameters
};

class MyClass {	// The class
  public:		// Access specifier
    	void myMethod() {  // Method/function defined inside the class
			cout << "Hello World!\n";
    	}
    	
    	void myMethod2();	// Method/function declaration
    	
    	MyClass() {		// Constructor
			cout << "This is a Constructor\n";
    	}
};

int Car::speed(int maxSpeed) {
	return maxSpeed;
}

Car2::Car2(string x, string y, int z) {	// Constructor definition outside the class
	brand = x;
	model = y;
	year = z;
}

void MyClass::myMethod2() {	// Method/function definition outside the class
	cout << "Hello World! Again\n";
}

int main() {

	setlocale(LC_ALL, "Portuguese");
	
	// Create an object of Car
	Car carObj1;
	carObj1.brand = "BMW";
	carObj1.model = "X5";
	carObj1.year = 1999;
	
	// Create another object of Car
	Car carObj2;
	carObj2.brand = "Ford";
	carObj2.model = "Mustang";
	carObj2.year = 1969;
	
	// Print attribute values
	cout << carObj1.brand << " " << carObj1.model << " " << carObj1.year << "\n";
	cout << carObj2.brand << " " << carObj2.model << " " << carObj2.year << "\n";
	cout << "The max speed of the cars is " << carObj1.speed(200) << "mph \n";	// Call the method with an argument 
	
	MyClass myObj;		// Create an object of MyClass (this will call the constructor)
	myObj.myMethod();	// Call the method
	myObj.myMethod2();	// Call the method
	
	// Create Car objects and call the constructor with different values
	Car2 car2Obj1("BMW", "X5", 1999);
	Car2 car2Obj2("Ford", "Mustang", 1969);

	// Print values
	cout << car2Obj1.brand << " " << car2Obj1.model << " " << car2Obj1.year << "\n";
	cout << car2Obj2.brand << " " << car2Obj2.model << " " << car2Obj2.year << "\n";

	return 0;
}
