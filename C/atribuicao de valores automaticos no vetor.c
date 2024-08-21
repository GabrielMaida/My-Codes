#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
    int f, w = 0, numero, valor;

    printf("Digite a quantidade de valores do vetor:");
    scanf("%d", & numero);

    int vetor[numero];

    for (f = 0; f < numero; f++){

        printf("Digite o %dº número:\n", (f+1));
        scanf("%d", & valor);
        
        vetor[f]= valor;
    }

    for (w = 0; w < numero; w++){
        printf("O valor do vetor %d é igual a %d \n", w, vetor[w]);
    }
}