#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int pontos;
	printf("Digite os seus pontos:");
	scanf("%d", & pontos);
	
	if (pontos >= 1000) {
		printf("Você ganhou!");
	}
	
	return 0;
}