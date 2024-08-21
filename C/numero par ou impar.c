#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){

   int numero;
   printf("Digite um número:");
   scanf("%d",& numero);

   if ((numero % 2) != 0){
    printf("O Número digitado é ímpar");
   }
   else{
    printf("O Número digitado é par");
   }
   
   return 0;
}