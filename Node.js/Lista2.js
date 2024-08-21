//LISTA DE EXERCÍCIOS JS - ESTRUTURAS DE DECISÃO

// 1 - Faça um Programa que tenha duas variáveis contendo números e imprima o maior deles
function ex1() {
    let num1 = 10;
    let num2 = 20;

    if (num1 > num2) {
        console.log("O maior número é: " + num1);
    } else {
        console.log("O maior número é: " + num2);
    }
}

// 2 - Faça um Programa que dado um valor, mostre na tela se o valor é positivo ou negativo
function ex2() {
    let num = -10;

    if (num >= 0) {
        console.log("O número é positivo.");
    } else {
        console.log("O número é negativo.");
    }
}

// 3 - Faça um Programa que verifique se uma letra em uma variável é "F" ou "M". Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido
function ex3() {
    let sexo = "F";

    if (sexo == "F") {
        console.log("F - Feminino");
    } else if (sexo == "M") {
        console.log("M - Masculino");
    } else {
        console.log("Sexo Inválido");
    }
}

// 4 - Faça um Programa que verifique se uma letra digitada é vogal ou consoante
function ex4() {
    let letra = "a";

    if (letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u") {
        console.log("A letra é uma vogal.");
    } else {
        console.log("A letra é uma consoante.");
    }
}
/*function ex4() {
    let letra = "a";
    let vogais = ['a', 'e', 'i', 'o', 'u'];

    if (vogais.includes(letra)) {
        console.log("A letra é uma vogal.");
    } else {
        console.log("A letra é uma consoante.");
    }
}*/

// 5 - Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a média alcançada por aluno e apresentar:
// - A mensagem "Aprovado", se a média alcançada for maior ou igual a sete;
// - A mensagem "Reprovado", se a média for menor do que sete;
// - A mensagem "Aprovado com Distinção", se a média for igual a dez.
function ex5() {
    let nota1 = 7;
    let nota2 = 7;
    let media = (nota1 + nota2) / 2;

    if (media == 10) {
        console.log("Aprovado com Distinção");
    } else if (media >= 7) {
        console.log("Aprovado");
    } else {
        console.log("Reprovado");
    }
}

// 6 - Faça um Programa que leia três números e mostre o maior deles
function ex6() {
    let num1 = 10;
    let num2 = 20;
    let num3 = 15;

    if (num1 > num2 && num1 > num3) {
        console.log("O maior número é: " + num1);
    } else if (num2 > num1 && num2 > num3) {
        console.log("O maior número é: " + num2);
    } else {
        console.log("O maior número é: " + num3);
    }
}

// 7 - Faça um Programa que leia três números e mostre o maior e o menor deles
function ex7() {
    let num1 = 10;
    let num2 = 20;
    let num3 = 15;

    let maior = num1;
    let menor = num1;

    if (num2 > maior) {
        maior = num2;
    } else if (num2 < menor) {
        menor = num2;
    }

    if (num3 > maior) {
        maior = num3;
    } else if (num3 < menor) {
        menor = num3;
    }

    console.log("O maior número é: " + maior);
    console.log("O menor número é: " + menor);
}

// 8 - Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar, sabendo que a decisão é sempre pelo mais barato
function ex8() {
    let preco1 = 10;
    let preco2 = 20;
    let preco3 = 15;

    if (preco1 < preco2 && preco1 < preco3) {
        console.log("Você deve comprar o produto 1");
    } else if (preco2 < preco1 && preco2 < preco3) {
        console.log("Você deve comprar o produto 2");
    } else {
        console.log("Você deve comprar o produto 3");
    }
}

// 9 - Faça um Programa que leia três números e mostre-os em ordem decrescente
function ex9() {
    let num1 = 10;
    let num2 = 20;
    let num3 = 15;

    let numeros = [num1, num2, num3];
    numeros.sort((a, b) => b - a);

    console.log("Os números em ordem decrescente são: " + numeros);
}


//Cria um laço for que executa as funções de ex1 a ex9
for (let i = 1; i <= 9; i++) {
    console.log('Resposta Exercício ' + i + ":\n");
    stringExercicio = "ex" + i + "()";
    eval(stringExercicio); // Considera a variável stringExercicio como um comando
    console.log('-----------------------------------');
}