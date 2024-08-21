#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(void){
	
	int soma[3], l, c, matriz[2][2];
	
	for(l = 0; l < 2; l++){	
		
		for(c = 0; c < 2; c++){
			printf("coloque o valor de matriz[%d][%d]: ", l, c);
			scanf("%d",& matriz[l][c]);
			printf("matriz[%d][%d]=%d\n", l, c, matriz[l][c]);
			if(l == 0){
				soma[0] = matriz[l][0] + matriz[l][1];
			}
			if(l == 1){
				soma[1] = matriz[l][0] + matriz[l][1];
			}
			soma[2] += matriz[l][c];
		}
	}
	printf("A soma dos valores da linha 0 é igual a %d\n",soma[0]);
	printf("A soma dos valores da linha 1 é igual a %d\n",soma[1]);
	printf("A soma de todos os valores é igual a %d\n",soma[2]);	
	
	return 0;
}