



for (i = 0; i < 10; i++) {
    if (i % 2 != 0) { // impares
        continue; // salta a la siguiente iteración
    }
    console.log("El valor de i es: " + i)
}

// Resultado
// El valor de i es: 0
// El valor de i es: 2
// El valor de i es: 4
// El valor de i es: 6
// El valor de i es: 8