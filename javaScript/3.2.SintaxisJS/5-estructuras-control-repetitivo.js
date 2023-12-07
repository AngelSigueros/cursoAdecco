/*
Las estructuras de control repetitivo nos permiten repetir fragmentos
de código.

Estructura determinada: (Es determinada porque en su declaración establecemos el rango en el que tiene que iterar)
for 

Estructura indeterminada: (Es indeterminado porque depende de una condición, no sabemos a priori cuántas veces se ejecuta)
while 
*/

// for
for (let i = 0; i < array.length; i++) {
    const element = array[i];
    
}
// 0 1 2 3 4  aquí tengo 5 elementos
// 1 2 3 4 5  aquí también tengo 5 elementos
for (i = 0; i < 5; i+=2) {
    // 1 iteracion  i = 0
    // 2 iteracion  i = 1
    // 3 iteracion  i = 2
    // 4 iteracion  i = 3
    // 5 iteracion  i = 4
    // 6 iteracion  i = 5, Esta iteración no se ejecuta porque 5 < 5 no se cumple
    console.log("El valor de i es: " + (i+1));
}

// Con for podemos recorrer los elementos de un array
var invitados = ["Bob", "John", "Raúl", "Diego", "Alan"];
console.log(invitados[0]);
console.log(invitados[1]);
console.log(invitados[2]);
console.log(invitados[3]);
console.log(invitados[4]);

console.log("=================================================")
for (i = 0; i < invitados.length; i++) { // 0 1 2 3
    console.log(invitados[i]);
}


// while
var cont = 20;
while (20 < 10) { // 10 < 10 ya no se cumple la condición y salimos del bucle
    console.log("Iteración while valor cont: " + cont);
    cont++; // Incremento
}

// do while
var cont2 = 20;
do {
    console.log("Iteración while valor cont2: " + cont2);
    cont2++;
}
while (cont2 < 10);

