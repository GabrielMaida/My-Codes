var contador = 0;

function incrementar() {
    contador++;
    console.log(contador);
}

function mudarConteudo() {
    var mudanca = document.getElementById("demo");
    mudanca.innerHTML = "Hoje vamos estudar Javascript!";
}

function apertarBotao() {
    var apertar = document.getElementById("botao");
    if (apertar.src === "file:///C:/Users/proto/Meu%20Drive/Disciplinas%20-%20Fase%202/Front-End%201/javascript/off.png") {
        apertar.src = "on.png";
    } else {
        apertar.src = "off.png";
    }
}

function somar() {
    var x = parseInt(document.getElementById("x").value);
    var y = parseInt(document.getElementById("y").value);
    var out = x + y;
    document.getElementById("out").value = out;
}

//file:///C:/Users/proto/Meu%20Drive/Disciplinas%20-%20Fase%202/Front-End%201/javascript/off.png


const arr = Array.from({ length: 10 }, (_, i) => i + 1);

for (const [i, num] of arr.entries()) {
    console.log(num, i);
}; //desestruturação de array ou objetos

console.log(arr.entries());

[
    [0, 1],
    [1, 2],
    [2, 3],
]

const [primeiro, segundo, , quarto] = arr;

console.log(primeiro, segundo, quarto);

const teste = arr[3]

const teste2 = arr.find((el, i, arr) => el === 4)

//jonas schmedtmann javascript course udemy


class Animal {
    constructor(tipo, cor, idade) {
        this.tipo = tipo;
        this.cor = cor;
        this.idade = idade;
    }
    mudaIdade(novaIdade) {
        this.idade = novaIdade;
    }

    fezAniversario() {
        this.idade++;
    }
}

let vet = [];
vet.push(new Animal("cachorro", "preto", 5));
vet.push(new Animal("gato", "branco", 3));
vet.forEach(element => {
    console.log(element.tipo, element.cor, element.idade, 'anos');
});

/*vet[0].fezAniversario();
vet[1].fezAniversario();
vet.forEach(element => {
    console.log(element.tipo, element.cor, element.idade, 'anos');
});*/

let ul = '<ul>';
vet.forEach(element => {
    element.fezAniversario();
    let li = `<li>
        ${element.tipo}, de cor 
        ${element.cor} e 
        ${element.idade} anos
        </li>`;
    ul += li;
});
ul += '</ul>';

document.getElementById('paragrafoAnimais').innerHTML = ul;