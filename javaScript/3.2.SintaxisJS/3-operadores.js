// Utilizamos operadores para realizar operaciones con variables
// 1. OPERADORES ARITMÉTICOS + - * / ** % 

// El operador suma (+)
var resultado1 = 5 + 4;
console.log("resultado1: " + resultado1)

// El operador resta (-)
var resultado2 = 5 - 4;
console.log("resultado2: " + resultado2)

// El operador multiplicación (*)
var resultado3 = 5 * 5;
console.log("resultado3: " + resultado3)

// El operador exponente (**) (A partir de ES6)
var resultado4 = 5 ** 3; // Equivalente a  Math.pow(5,3)
console.log("resultado4: " + resultado4)

var resultado4_2 = Math.pow(5, 3);
console.log("resultado4_2: " + resultado4_2)

// Operador incremento
var resultado5 = 5;
console.log("resultado5: " + resultado5);
resultado5 = resultado5 + 1; // 6
resultado5++; // suma 1 a resultado5
console.log("resultado5: " + resultado5);

resultado5++; // suma 1 a resultado5
console.log("resultado5: " + resultado5);

// Operador decremento
var resultado6 = 5;
console.log("resultado6: " + resultado6);

resultado6--; // resta 1 a resultado6
console.log("resultado6: " + resultado6);

resultado6--; // resta 1 a resultado6
console.log("resultado6: " + resultado6);


// Operador división
var resultado7 = 10 / 2;
console.log("resultado7: " + resultado7);

var resultado8 = 20 / 5;
console.log("resultado8: " + resultado8);

// Operador módulo (resto de la división)
var resultado9 = 10 % 2;
console.log("resultado9: " + resultado9);

var resultado10 = 11 % 2;
console.log("resultado10: " + resultado10);

// El operador suma también permite concatenar cadenas de texto
var resultado11 = "Hola" + " y " + "adiós."
var resultado12 = "Edad: " + 20;

var carManufacturer = "Ford";
var carModel = "Mondeo";
console.log(carManufacturer + " " + carModel);

// 2. PRECEDENCIA DE OPERADORES
// ciertos operadores se ejecutan antes que otros cuando los combinamos en una misma sentencia
var resultado13 = 50 + 50 * 3;  // 50 + 150 = 200
console.log("resultado13: " + resultado13);

// utilizando paréntesis podemos hacer que ciertas operaciones se ejecuten antes que otras
var resultado14 = (50 + 50) * 3; // 100 * 3 = 300
console.log("resultado14: " + resultado14);

// cuando todos tienen la misma importancia se ejecutará en orden de izquierda a derecha
var resultado15 = 50 + 50 - 3;  // 100 - 3 = 97
console.log("resultado15: " + resultado15);
