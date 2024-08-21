#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	
	int n;
	
	while(n <= 10){
		if(n % 2 == 0){
			printf("%d\n",n);
		}		
		n++;
	}
	return 0;
}