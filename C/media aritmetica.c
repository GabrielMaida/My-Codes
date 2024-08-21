#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){

  float n1, n2, n3, n4, m;

  printf("Digite a primeira nota:");
  scanf("%f",& n1);

  printf("Digite a segunda nota:");
  scanf("%f",& n2);

  printf("Digite a terceira nota:");
  scanf("%f",& n3);

  printf("Digite a quarta nota:");
  scanf("%f",& n4);

  m = (n1 + n2 + n3 + n4) / 4;

  printf("A média é: %.2f \n", m);

  return 0;
}