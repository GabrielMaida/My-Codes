#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){

  float salario, bonus;
  int tempo;

  printf("Digite o valor do salário:");
  scanf("%f", &salario);

  printf("Digite o valor do tempo:");
  scanf("%d", &tempo);  

  if (tempo >= 5) {
    bonus = salario * 0.2;
  }

  else {
    bonus = salario * 0.1;
  }

  printf("O valor do bônus é: %.2f", bonus);
  
  return 0;
}