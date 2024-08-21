#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<time.h>

int main(void){

	int l, c, i = 0, matriz[4][4];

	srand(time(NULL));

	for(l = 0; l < 4; l++){

		for(c = 0; c < 4; c++){

			matriz[l][c] = rand() % 12;
			printf("Valor de matriz[%d][%d]: %d\n", l, c, matriz[l][c]);
		}
	}
	
	printf("\nOs numeros maiores que 10 sao: ");
	
	for(l = 0; l < 4; l++){

		for(c = 0; c < 4; c++){
			
			if(matriz[l][c] > 10){
				
				printf("%d ", matriz[l][c]);
				i++;
			}
		}
	}
	printf("\nHa %d numero(s) maiores que 10", i);

	return 0;
}
