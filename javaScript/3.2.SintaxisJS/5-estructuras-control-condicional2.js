/*
Dentro de las estructuras de control condicional podemos utilizar
    operadores de comparación y lógicos para evaluar condiciones:

    Operadores comparación:
    var1 = var2 IMPORTANTE ⚠️: el operador = no compara, solo asigna. let number = 5
    var1 == var2  Compara si dos variables son iguales
    var1 === var2  Compara si dos variables son iguales comprobando también que tengan el mismo tipo de dato
    var1 != var2  Compara si dos variables NO son iguales
    var1 !== var2  Compara si dos variables NO son iguales en valor o NO son iguales en tipo
    var1 > var2  Compara si una variable es mayor que otra
    var1 < var2  Compara si una variable es mayor que otra
    var1 >= var2  Compara si una variable es mayor o igual que otra
    var1 <= var2  Compara si una variable es menor o igual que otra

   Operadores lógicos: 
   condition1 && condition2  Operador and: se cumple si las dos condiciones son verdaderas
   condition1 || condition2  Operador or: se cumple si al menos una de las dos condiciones son verdaderas
   !condition1  Operador not: se cumple si el resultado de invertir condition1 es verdadero
*/
// OPERADORES DE COMPARACIÓN 

// Operador ==
var number1 = 5;
var number2 = 10;
if (number1 == number2) {
    console.log('5 == 10 es verdadero')
}

// Operador ===
var number3 = "10";
var number4 = 10;
if (number3 == number4) {
    console.log('"10" == 10 es verdadero 1')
}
if (number3 === number4) {
    console.log('"10" === 10 es verdadero 2')
    console.log("PRUEBAS ===")
}

// Operador !=
var number5 = 5;
var number6 = 10;
if (number5 != number6) { // Si number5 NO es igual a number6 entonces se cumple
    console.log('5 != 10 es verdadero')
}

// Operador !==
var number7 = 10;
var number8 = "10";
if (number7 != number8) { // son iguales porque no se comprueba el tipo de dato
    console.log('10 != "10" es verdadero 1 ')
}
if (number7 !== number8) { // al comprobar el tipo de dato se ve que no son iguales, uno es un número y otro un texto
    console.log('10 !== "10" es verdadero 2')
}

// Operador > Mayor que
var number9 = 5;
var number10 = 10;
if (number10 > number9) {
    console.log('10 > 5 es verdadero')
}

// Operador < Menor que
var number11 = 5;
var number12 = 10;
if (number11 < number12) { // 5 < 10
    console.log('5 < 10 es verdadero')
}

// Operador >= Mayor o igual
var number13 = 10;
var number14 = 10;
if (number13 >= number14) {
    console.log('10 >= 10 es verdadero')
}

// Operador <= Menor o igual
if (number13 <= number14) { // 10 <= 10
    console.log('10 <= 10 es verdadero')
}

// OPERADORES LÓGICOS

// Operador &&
// condicion1 && condicion2 ... 
if (5 < 10 && 10 < 20 && 10 > 100) { // Operador and -- Si condicion1 se cumple Y condicion2 también se cumple entonces se ejecuta el código
    console.log('5 < 10 && 10 < 20 es verdadero');
}

// Operador || OR con que se cumpla una ya entra dentro
if (5 > 10 || 10 < 20) {
    console.log('5 > 10 || 10 < 20 es verdadero -- OPERADOR OR')
}

// Operador !
var check = 5 > 10; // false

if (check) { // false
    console.log('5 > 10 es verdadero 1 ')
}
if (!check) { // !(false) nos da true
    console.log('!(5 > 10) es verdadero 2')
}

// Lo que ocurre cuando negamos con !
// !false -- true 
// !true -- false