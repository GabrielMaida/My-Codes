#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int numero1, numero2, numero3;
	
	printf("Digite o valor do primeiro número:");
	scanf("%d", & numero1);
	
	printf("Digite o valor do segundo número:");
	scanf("%d", & numero2);
	
	printf("Digite o valor do terceiro número:");
	scanf("%d", & numero3);
	
	if(numero1 == numero2 && numero2 == numero3){
		printf("Os números são iguais");
	}
	else{
		if(numero1 > numero2 && numero1 > numero3){
			printf("O número %d é o maior dentre os três", numero1);
		}
		else{
			if(numero2 > numero3){
				printf("O número %d é o maior dentre os três", numero2);
			}
		    else{
					printf("O número %d é o maior dentre os três", numero3);				
			}
		}
	}
	
	return 0;
}