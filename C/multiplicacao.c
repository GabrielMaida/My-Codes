#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main()
{
    int n1;
    int n2;
    int m;
	
    printf("Insira o primeiro número: \n");
    scanf("%d", & n1);
	
    printf("Insira o segundo número: \n");
    scanf("%d", & n2);
	
    m = n1 * n2;
	
    printf("O resultado é %d\n", m);
	
	return 0;
}
