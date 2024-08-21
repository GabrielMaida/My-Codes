#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	double altura;
	
	printf("Coloque sua altura:");
	scanf("%lf", & altura);

	if (altura >= 1.80){
		printf("Você pode passar.");
	}
	else{
		printf("Você não pode passar.");
	}
}