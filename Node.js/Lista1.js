//LISTA DE EXERCÍCIOS JS - SEQUENCIAL

// 1 - Faça um Programa que mostre a mensagem "Alo mundo" na tela
function ex1() {
    console.log('Hello World!');
}

// 2 - Faça um Programa que receba um número e então mostre a mensagem "O número informado foi [número]"
function ex2() {
    let numero = 10;
    console.log('O número informado foi ' + numero + '.');
}

// 3 - Faça um Programa que faça a soma de dois números e imprima o resultado
function ex3() {
    let num1 = 10;
    let num2 = 20;
    let soma = num1 + num2;
    console.log('A soma dos números ' + num1 + ' e ' + num2 + ' é ' + soma + '.');
}

// 4 - Faça um Programa que tenha 4 variáveis representando as notas bimestrais e mostre a média
function ex4() {
    let nota1 = 7;
    let nota2 = 8;
    let nota3 = 6;
    let nota4 = 5;
    let media = (nota1 + nota2 + nota3 + nota4) / 4;
    console.log('A média das notas é ' + media + '.');
}

// 5 - Faça um Programa que converta metros para centímetros
function ex5() {
    let metros = 10;
    let centimetros = metros * 100;
    console.log(metros + ' metros é igual a ' + centimetros + ' centímetros.');
}

// 6 - Faça um Programa que peça o raio de um círculo, calcule e mostre sua área
function ex6() {
    let raio = 5;
    let area = Math.PI * Math.pow(raio, 2);
    console.log('A área do círculo é ' + area + '.');
}

// 7 - Faça um Programa que calcule a área de um quadrado, em seguida mostre o dobro desta área para o usuário
function ex7() {
    let lado = 5;
    let area = Math.pow(lado, 2);
    console.log('A área do quadrado é ' + area + ' e o dobro é ' + area * 2 + '.');
}

// 8 - Faça um Programa que pegue o valor de uma variável que representa o valor por hora trabalhada e o número de horas trabalhadas no mês. Calcule e mostre o total do salário no referido mês
function ex8() {
    let valorHora = 10;
    let horasTrabalhadas = 160;
    let salario = valorHora * horasTrabalhadas;
    console.log('O salário no mês é ' + salario + '.');
}

// 9 - Faça um Programa que converta a temperatura de graus Farenheit em graus Celsius e imprima na tela -> C = (5 * (F-32) / 9)
function ex9() {
    let farenheit = 100;
    let celsius = (5 * (farenheit - 32) / 9);
    console.log(farenheit + '°F é igual a ' + celsius + '°C.');
}

// 10 - Faça um Programa que converta a temperatura de graus Celsius para graus Farenheit e imprima na tela -> F = (C * 9/5) + 32
function ex10() {
    let celsius = 37;
    let farenheit = (celsius * 9 / 5) + 32;
    console.log(celsius + '°C é igual a ' + farenheit + '°F.');
}

//Cria um laço for que executa as funções de ex1 a ex10
for (let i = 1; i <= 10; i++) {
    console.log('Resposta Exercício ' + i + ":\n");
    stringExercicio = "ex" + i + "()";
    eval(stringExercicio); // Considera a variável stringExercicio como um comando
    console.log('-----------------------------------');
}