#include<stdio.h>
#include<stdlib.h>
#include<math.h>


int main(void){
	
	printf("|-------------------------------|\n");
	printf("|-------------------------------|\n");
	printf("|----------Calculadora----------|\n");
	printf("|--------Geometria Plana--------|\n");
	printf("|-------------------------------|\n");
	printf("|-------------------------------|\n");
	
	char figura[2], calculo[2];
	float area, perimetro;
	float base, altura, lado, diagonal_maior, diagonal_menor;
	float base_maior, base_menor, raio, lado2, lado3, pi;

	printf("Escolha o Cálculo:\n");
	printf("\ta - Área\n");
	printf("\tp - Perímetro\n");
	scanf("%s", & calculo[0]);

    if(calculo[0] != 'a' && calculo[0] != 'p'){
        printf("Cálculo Inválido\n");
    }

	printf("Escolha a figura Geométrica:\n");
	printf("\tq - Quadrado\n");
	printf("\tr - Retângulo\n");
	printf("\tt - Triângulo\n");
	printf("\tc - Círculo\n");
	printf("\tz - Trapézio\n");
	printf("\tl - Losango\n");
	printf("\tp - Paralelogramo\n");
	scanf("%s", & figura[0]);

    switch (figura[0]){
		case 'q':
			if(calculo[0] == 'a'){
                printf("Valor do lado:");
                scanf("%f", & lado);
                area = pow(lado,2);
                printf("A área é %.2f", area);
            }
            else{
                if(calculo[0] == 'p'){
                    printf("Valor do lado:");
                    scanf("%f", & lado);
                    perimetro = 4 * lado;
                    printf("O perímetro é %.2f", perimetro);
				}
                
			}
			break;			
		case 'r':
			if(calculo[0] == 'a'){
				printf("Valor da base:");
				scanf("%f", & base);
				printf("Valor da altura:");
				scanf("%f", & altura);
				area = base * altura;
				printf("A área é %.2f", area);
			}
			else{
                if(calculo[0] == 'p'){
					printf("Valor da base:");
					scanf("%f", & base);
					printf("Valor da altura:");
					scanf("%f", & altura);
					perimetro = 2 *(base + altura);
					printf("O perímetro é %.2f", perimetro);
				}
			}
			break;			
		case 't':
			if(calculo[0] == 'a'){
				printf("Valor da base:");
				scanf("%f", & base);
				printf("Valor da altura:");
				scanf("%f", & altura);
				area = (base * altura) / 2;
				printf("A área é %.2f", area);
			}
			else{
				if(calculo[0] == 'p'){
					printf("Valor do primeiro lado:");
					scanf("%f", & lado);
					printf("Valor do segundo lado:");
					scanf("%f", & lado2);
					printf("Valor do terceiro lado:");
					scanf("%f", & lado3);
					perimetro = lado + lado2 + lado3;
					printf("O perímetro é %.2f", perimetro);
				}
			}
			break;			
		case 'c':
			if(calculo[0] == 'a'){
				printf("Valor de pi:");
				scanf("%f", & pi);
				printf("Valor do raio:");
				scanf("%f", & raio);
				area = pi * pow(raio,2);
				printf("A área é %.2f", area);
			}
			else{
				if(calculo[0] == 'p'){
					printf("Valor de pi:");
					scanf("%f", & pi);
					printf("Valor do raio:");
					scanf("%f", & raio);
					perimetro = 2 * pi * raio;
					printf("O perímetro é %.2f", perimetro);
				}
            }
			break;			
		case 'z':
			if(calculo[0] == 'a'){
				printf("Valor da base maior:");
				scanf("%f", & base_maior);
				printf("Valor da base menor:");
				scanf("%f", & base_menor);
				printf("Valor da altura:");
				scanf("%f", & altura);
				area = ((base_maior + base_menor) * altura) / 2;
				printf("A área é %.2f", area);
			}
			else{
				if(calculo[0] == 'p'){
					printf("Valor da base maior:");
					scanf("%f", & base_maior);
					printf("Valor da base menor:");
					scanf("%f", & base_menor);
					printf("Valor do primeiro lado:");
					scanf("%f", & lado);
					printf("Valor do segundo lado:");
					scanf("%f", & lado2);
					perimetro = base_maior + base_menor + lado + lado2;
					printf("O perímetro é %.2f", perimetro);
				}
            }
			break;			
		case 'l':
			if(calculo[0] == 'a'){
				printf("Valor da diagonal maior:");
				scanf("%f", & diagonal_maior);
				printf("Valor da diagonal menor:");
				scanf("%f", & diagonal_menor);
				area = (diagonal_maior * diagonal_menor) / 2;
				printf("A área é %.2f", area);
			}
			else{
				if(calculo[0] == 'p'){
					printf("Valor do lado:");
					scanf("%f", & lado);
					perimetro = 4 * lado;
					printf("O perímetro é %.2f", perimetro);
				}
            }
			break;			
		case 'p':
			if(calculo[0] == 'a'){
				printf("Valor da base:");
				scanf("%f", & base);
				printf("Valor da altura:");
				scanf("%f", & altura);
				area = base * altura;
				printf("A área é %.2f", area);
			}
			else{
				if(calculo[0] == 'p'){
					printf("Valor da base:");
					scanf("%f", & base);
					printf("Valor do lado:");
					scanf("%f", & lado);
					perimetro = 2 *(base + lado);
					printf("O perímetro é %.2f", perimetro);
				}
            }
			break;			
		default:
			printf("Forma Geométrica Inválida\n");
	}
    return 0;
}