#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int mes;
	printf("Digite o número do mês:");
	scanf("%d", & mes);

	switch(mes){
		case 1:
			printf("O mês é Janeiro");
			break;
		case 2:
			printf("O mês é Fevereiro");
			break;
		case 3:
			printf("O mês é Março");
			break;
		case 4:
			printf("O mês é Abril");
			break;
		case 5:
			printf("O mês é Maio");
			break;
		case 6:
			printf("O mês é Junho");
			break;
		case 7:
			printf("O mês é Julho");
			break;
		case 8:
			printf("O mês é Agosto");
			break;
		case 9:
			printf("O mês é Setembro");
			break;
		case 10:
			printf("O mês é Outubro");
			break;
		case 11:
			printf("O mês é Novembro");
			break;
		case 12:
			printf("O mês é Dezembro");
			break;
		default:
			printf("O número digitado não é valido");			
	}

	return 0;
}