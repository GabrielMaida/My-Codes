#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(void){

	float media, nota[4], peso[4];

	printf("Digite a 1ª nota:");
	scanf("%f",& nota[0]);
	printf("Digite o 1º peso:");
	scanf("%f",& peso[0]);

	printf("Digite a 2ª nota:");
	scanf("%f",& nota[1]);
	printf("Digite o 2º peso:");
	scanf("%f",& peso[1]);

	printf("Digite a 3ª nota:");
	scanf("%f",& nota[2]);
	printf("Digite o 3º peso:");
	scanf("%f",& peso[2]);

	printf("Digite a 4ª nota:");
	scanf("%f",& nota[3]);
	printf("Digite o 4º peso:");
	scanf("%f",& peso[3]);

	media = ((nota[0]*peso[0])+(nota[1]*peso[1])+(nota[2]*peso[2])+(nota[3]*peso[3])) / (nota[0]+nota[1]+nota[2]+nota[3]);
	printf("Media: %f", media);
	return 0;
}
