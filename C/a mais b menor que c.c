#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int a, b, c;
	
	printf("Digite o valor de A:");
	scanf("%d", & a);
	
	printf("Digite o valor de B:");
	scanf("%d", & b);
	
	printf("Digite o valor de C:");
	scanf("%d", & c);
	
	if ((a + b) < c){
		printf("A soma de A e B é menor que C");
	}
	
	return 0;
}