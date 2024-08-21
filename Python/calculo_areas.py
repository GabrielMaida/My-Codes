# Frufrus do código
print('-'*10, 'Calculadora de Áreas', '-'*10)
print('1 - Retângulo')
print('2 - Triângulo')
print('3 - Círculo')
print('0 - Sair')
print('-'*42)
forma = int(input('Escolha a forma: '))
print('-'*42)

# Declaração da constante PI
PI = 3.1415

# Função para calcular a área do retângulo
def areaRetangulo(a, b):
    area_retangulo = a * b
    return 'retângulo', area_retangulo

# Função para calcular a área do retângulo
def areaTriangulo(b, h):
    area_triangulo = (b * h) / 2
    return 'triângulo', area_triangulo

# Função para calcular a área do retângulo
def areaCirculo(r):
    area_circulo = PI * (r ** 2)
    return 'círculo', area_circulo


# Match case para escolha da forma e chamar as funções
match forma:
    case 1:
        ladoA = float(input('Primeiro lado do retângulo: '))
        ladoB = float(input('Segundo lado do retângulo: '))
        forma, area = areaRetangulo(ladoA, ladoB)
    case 2:
        base = float(input('Base do triângulo: '))
        altura = float(input('Altura do triângulo: '))
        forma, area = areaTriangulo(base, altura)
    case 3:
        raio = float(input('Raio do círculo: '))
        forma, area = areaCirculo(raio)
    case 0:
        print("Você não selecionou nenhuma forma.")
        exit()

# Print do valor da área
print('-'*42)
print(f'A área do {forma} é igual a {area:.2f}')
print('-'*42)
