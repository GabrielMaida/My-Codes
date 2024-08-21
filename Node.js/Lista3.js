//LISTA DE EXERCÍCIOS JS - ESTRUTURAS DE REPETIÇÃO

// 1 - Contagem crescente: Crie um loop for que imprima os números de 1 a 10
function ex1() {
    for (let i = 1; i <= 10; i++) {
        console.log(i);
    }
}

// 2 - Contagem regressiva: Crie um loop for que imprima os números de 10 a 1
function ex2() {
    for (let i = 10; i >= 1; i--) {
        console.log(i);
    }
}

// 3 - Pares até um limite: Imprima todos os números pares de 1 até 20 usando um loop for
function ex3() {
    for (let i = 1; i <= 20; i++) {
        if (i % 2 == 0) {
            console.log(i);
        }
    }
}

// 4 - Soma de números: Calcule a soma dos números de 1 a 50 usando um loop for
function ex4() {
    let soma = 0;
    for (let i = 1; i <= 50; i++) {
        soma += i;
    }
    console.log('A soma dos números de 1 a 50 é ' + soma + '.');
}

// 5 - Tabuada: Crie um loop for para exibir a tabuada do 5
function ex5() {
    for (let i = 1; i <= 10; i++) {
        console.log('5 x ' + i + ' = ' + 5 * i);
    }
}

// 6 - Potências: Calcule as potências de 2 de 0 a 10
function ex6() {
    for (let i = 0; i <= 10; i++) {
        console.log(i + '^2 = ' + Math.pow(i, 2));
    }
}


//Cria um laço for que executa as funções de ex1 a ex6
for (let i = 1; i <= 6; i++) {
    console.log('Resposta Exercício ' + i + ":\n");
    stringExercicio = "ex" + i + "()";
    eval(stringExercicio); // Considera a variável stringExercicio como um comando
    console.log('-----------------------------------');
}