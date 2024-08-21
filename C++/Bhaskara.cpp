#include <iostream>
#include <locale.h>
#include <string>
#include <cmath>

using namespace std;

int main() {

	setlocale(LC_ALL, "Portuguese");

	int a, b, c, delta;
	float x1, x2;

	cout << "Escreva o valor de a:";
	cin >> a;

	cout << "Escreva o valor de b:";
	cin >> b;

	cout << "Escreva o valor de c:";
	cin >> c;

	cout << "a: " << a << "\n";
	cout << "b: " << b << "\n";
	cout << "c: " << c << "\n";

	delta = ((pow(b, 2)) - (4 * a * c));

	if (delta < 0){
		cout << "A equação não possui valores reais.";
	}
	else if (delta == 0){
		x1 = ((-b) + sqrt(delta)) / (2 * a);
		cout << "A raiz da equação é " << x1;
	}
	else{
		x1 = ((-b) + sqrt(delta)) / (2 * a);
		x2 = ((-b) - sqrt(delta)) / (2 * a);
		cout << "As raízes da equação são " << x1 << " e " << x2;
	}

	return 0;
}
