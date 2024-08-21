#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int idade;
	
	printf("Digite a sua idade:");
	scanf("%d", & idade);

	if (idade >= 18){
		printf("Você é maior de idade, por isso pode prosseguir com a compra.");
	}
	else{
		printf("Você não é maior de idade, sua entrada não é permitida.");
	}
}