#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	float a, b, resultado;
	char operacao;
	
	printf("Digite o valor de A:");
	scanf("%f", & a);

    printf("Digite a operação:");
	scanf("%s", & operacao);
	
	printf("Digite o valor de B:");
	scanf("%f", & b);	
		
	switch(operacao){
		case '+':
			resultado = a + b;
			printf("%.3f",resultado);
			break;
			
		case '-':
			resultado = a - b;
			printf("%.3f",resultado);
			break;
			
		case '*':
			resultado = a * b;
			printf("%.3f",resultado);
			break;
			
		case '/':
			resultado = a / b;
			printf("%.3f",resultado);
			break;
			
		default:
			printf("Operação inválida");
	}
	
}