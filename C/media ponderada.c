#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(void){

	float media, nota[4], peso[4];

	printf("Digite a 1� nota:");
	scanf("%f",& nota[0]);
	printf("Digite o 1� peso:");
	scanf("%f",& peso[0]);

	printf("Digite a 2� nota:");
	scanf("%f",& nota[1]);
	printf("Digite o 2� peso:");
	scanf("%f",& peso[1]);

	printf("Digite a 3� nota:");
	scanf("%f",& nota[2]);
	printf("Digite o 3� peso:");
	scanf("%f",& peso[2]);

	printf("Digite a 4� nota:");
	scanf("%f",& nota[3]);
	printf("Digite o 4� peso:");
	scanf("%f",& peso[3]);

	media = ((nota[0]*peso[0])+(nota[1]*peso[1])+(nota[2]*peso[2])+(nota[3]*peso[3])) / (nota[0]+nota[1]+nota[2]+nota[3]);
	printf("Media: %f", media);
	return 0;
}
