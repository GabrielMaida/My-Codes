#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
  int n, soma = 0, c, valor;

  printf("Digite o número que será somado: ");
  scanf("%d",& valor);

  printf("Digite a quantidade de somas: ");
  scanf("%d",& n);  
  
  for (c = 1; c <= n; c++){    
    soma = soma + valor;
  }
  
  printf("A soma é %d", soma);
}
