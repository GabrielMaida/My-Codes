//
//  Conversion - Program to convert temperature from
//             Celsius degrees into Fahrenheit:
//             Fahrenheit = Celsius  * (212 - 32)/100 + 32
//
#include <cstdio>
#include <cstdlib>
#include <iostream>
using namespace std;

int main(int nNumberofArgs, char* pszArgs[])
{
    // enter the temperature in Celsius
    int celsius;
    cout << "Enter the temperature in Celsius:";
    cin >> celsius;

    // calculate conversion factor for Celsius
    // to Fahrenheit
    int factor;
    factor = 212 - 32;

    // use conversion factor to convert Celsius
    // into Fahrenheit values
    int fahrenheit;
    fahrenheit = factor * celsius/100 + 32;

    // output the results (followed by a NewLine)
    cout << "Fahrenheit value is:";
    cout << fahrenheit << endl;

    // wait until user is ready before terminating program
    // to allow the user to see the program results
    cout << "Press Enter to continue..." << endl;
    cin.ignore(10, '\n');
    cin.get();
    return 0;
}

