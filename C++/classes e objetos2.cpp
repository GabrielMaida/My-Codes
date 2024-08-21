#include <iostream>
#include <locale.h>
#include <string>
#include <cmath>

using namespace std;

class MyClass {
	int w;   // Private attribute
	int z;   // Private attribute
	public:    // Public access specifier
		int x;   // Public attribute
	private:   // Private access specifier
		int y;   // Private attribute
};

int main() {

	setlocale(LC_ALL, "Portuguese");
	
	MyClass myObj;
	myObj.x = 25;  // Allowed (public)
//	myObj.y = 50;  // Not allowed (private)
	
	return 0;
}
