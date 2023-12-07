
/*
Es común combinar estructuras de control repetitivo con 
estructuras de control condicional para desarrollar la lógica de 
nuestros algoritmos/programas
*/

// for
for (i = 0; i < 10; i++) {
    // dentro de for podemos utilizar todas las estructuas de control condicional: if, else, switch
    if (i % 2 == 0) { // comprueba si el valor de la variable i en cada iteración es par
        console.log("Ejemplo 1 - El valor de i es: " + i)
    }
}

// continue - Si ejecutamos continue se salta a la siguiente iteración
for (i = 0; i < 10; i++) {
    if (i % 2 == 0) {
        continue; // salta a la siguiente iteración
    }
    console.log("Ejemplo 2 - El valor de i es: " + i)
}

// break - Si ejecutamos break se rompe el bucle y el programa se sigue ejecutando secuencialmente
for (i = 0; i < 10; i++) {
    if (i == 5) {
        break; // hace salirse del bucle
    }
    console.log(" Ejemplo 3 - El valor de i es: " + i)
}

// Con for podemos recorrer los elementos de un array
var invitados = ["Bob", "John", "Raúl", "Wally", "Diego"]
for (i = 0; i < invitados.length; i++) {
    if (invitados[i] == "Wally") {
        console.log("Ejemplo 4 - Encontrado a Wally en la posición: " + i)
        break;
    }
}

// while
var cont = 0;
while (cont < 10) {
    console.log("Ejemplo 5 - Iteración while valor cont: " + cont);
    cont++;
}

// do while
var cont2 = 0;
do {
    console.log("Ejemplo 6 - Iteración while valor cont2: " + cont2);
    cont2++;
}
while (cont2 < 10);


// while break

var cont3 = 0;
while (cont3 < 10) {
    if (cont3 == 5) {
        break; // sale del bucle
    }
    console.log("Ejemplo 7 - Iteración while valor cont: " + cont3);
    cont3++;
}

// while continue
var numbers = [1, 5, 9, 13, 15, 17, 14, 22, 23, 20]
var valid = false;
var validCont = 0;
// Comprobar si en el array numbers hay al menos 2 números pares
while (!valid) {

    // Comprueba si el número del array que estamos iterando es impar
    if (numbers[i] % 2 != 0) {
        continue;
    } else {
        validCont++;
    }
    // Si se han encontrado 2 números pares
    if (validCont == 2) {
        valid = true;
        console.log("Ejemplo 8 - Hemos encontrado al menos 2 números pares en el array numbers");
    }

}