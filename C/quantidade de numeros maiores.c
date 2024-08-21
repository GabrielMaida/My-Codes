#include <stdio.h>

int main(){

    int n, soma = 0, c, valor;

    printf("Digite o número a ser comparado:");
    scanf("%d", & n);
    printf("Digite %d número(s) que será(ão) comparado(s) a %d \n", n, n);

    for (c = 1; c <= n; c++){

        printf("-");
        scanf("%d", & valor);
        
        if(valor > n){

            soma += 1;
        }
    }
    printf("Quantidade de números maiores que %d: %d\n", n, soma);
	return 0;
}