
var currentYear = 2021;
var name = "Juan";
var age = 30;
var email = "alan@alansastre.co"

// ES6

var hola;
// console.log(hola);
let adios;
// console.log(adios);
let currentYear2 = 2021;
// console.log(currentYear2);
const monday = 'MONDAY';
// console.log(monday);


// Tipos de datos

// Numeros enteros
let number1 = 16;

// numeros decimales
let decimal1 = 16.99;

// cadenas de texto (string)
let nombre = "alan";
let apellido = 'sastre';
let letra = 's';

// console.log(nombre + " " + apellido)

// boolean: true o false - verdadero o falso
let mayor18 = true;
let menor18 = false;


// Estruturas de datos: Arrays:
let name1 = "Alan"; 
let name2 = "Evaristo"; 
let name3 = "Aroa";
//              0       1   2
let names = [name3, name1, name2];
console.log(names[0]) 
console.log(names[1]) 
console.log(names[2])

let employees = ["Patricia", "Álvaro", "Gerardo", "Leticia"]

// Programación Orientada a Objetos (POO, OOP)

let car = {
    manufacturer: 'Ford',
    model: 'Mondeo',
    cc: 1.4,
    cv: 110,
    color: 'black'
}
console.log(car.model)

let stock1 = {
    ticker: 'PINS',
    open: 67.34,
    close: 68.12,
    vol: 234578
}
let stock2 = {
    ticker: 'AMZ',
    open: 3200,
    close: 3230,
    vol: 1989838,
    prices: [5.99, '',''],
    broker: {

    }
}

let acciones = [stock1, stock2]

console.log(typeof stock1)
console.log(typeof acciones)
console.log(typeof name1)
// console.log(nombre);
// console.log(apellido);
// console.log(letra);