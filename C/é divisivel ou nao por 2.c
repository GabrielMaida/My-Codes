#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int numero, metade;
	printf("Digite um número:");
	scanf("%d", & numero);
	
	if ((numero % 2) == 0){
		metade = numero / 2;
		printf("O número %d é divisível por 2 e sua metade é %d", numero, metade);
	}
	else{
		printf("O número %d não é divisível por 2", numero);
	}
	
	return 0;
}