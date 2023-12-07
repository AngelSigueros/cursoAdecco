// 1. OPERADORES DE ASIGNACIÓN

// Cuando creamos una variable y le asignamos un valor, estamos utilizando 
// un operador de asignación = 
var num1 = 5;
var num2 = 6;
var num3 = num1 + num2;
console.log("num3: " + num3);
// Los operadores aritméticos se pueden utilizar a la vez que se asigna, acortando las expresiones:

// Operador suma (+=)
var num4 = 10;
num4 = num4 + 5; // 10 + 5 el resultado será 15
console.log("num4: " + num4);

variable1 = 1;
variable1 = variable1 + 5;
variable1 += 5;

num4 = 10; // restauramos el valor inicial 
num4 += 5; // operador suma con asignación equivale a la línea anterior
console.log("num4: " + num4);

var array1 = [5, 3, 2, 5, 6]
var suma = 0;
for (let index = 0; index < array1.length; index++) {
    const element = array1[index];
    suma += element;
    // suma = suma + element;
    // 0 -- suma = 5
    // 1 -- suma = 8
    // 2 -- suma = 10
    // 3 -- suma = 15
    // 4 -- suma = 21
}
// Ambas opciones son equivalentes
num4 = num4 + 5;
num4 += 5;

// Operador resta (-=)
var num5 = 10;
num5 = num5 - 5; // 10 - 5 equivale a 5
console.log("num5: " + num5);

num5 = 10; // restauramos el valor inicial 
num5 -= 5; // operador resta con asignación equivale a la línea anterior
console.log("num5: " + num5);

// Ambas opciones son equivalentes
num5 = num5 - 5;
num5 -= 5;

// operador multiplicación (*=)
var num6 = 10;
num6 = num6 * 5; // 10 * 5 equivale a 50
num6 = 10; // restauramos el valor inicial 
num6 *= 5; // operador multiplicación con asignación equivale a la línea anterior

// operador división (/=)
var num7 = 10;
num7 = num7 / 5; // 10 / 5 equivale a 2
num7 = 10; // restauramos el valor inicial 
num7 /= 5; // operador multiplicación con asignación equivale a la línea anterior

// operador módulo (%=)
var num8 = 10;
num8 = num8 % 5; // 10 % 5 equivale a 0 porque el resto de la división 10 entre 5 es 0
console.log("num8: " + num8);

num8 = 10; // restauramos el valor inicial 
num8 %= 5; // operador multiplicación con asignación equivale a la línea anterior
console.log("num8: " + num8);
