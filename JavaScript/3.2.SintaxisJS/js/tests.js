// for (let num=1; num<=50; num++) {
//     if (num %3 == 0 && num %5 == 0){
//         console.log('FizzBuzz');
//         continue;
//     }
//     if (num%3==0) {
//         console.log('Fizz');
//         continue;
//     }
//     if (num%5==0) {
//         console.log('Buzz');
//         continue;
//     }
// console.log(num);
// }

function saludar(nombre) {
    return 'Hola, '+ nombre;
}

console.log(saludar("Juan"));

// Función Anónima: Crea una función anónima que realice la suma de dos números y asigna esa función a una variable llamada sumar.

let sumar = function(a, b) {
    return a+b;
};

// Ejemplo de uso:
console.log(sumar(3, 4));  // Debería mostrar 7

// IIFE (Expresión de Función Invocada Inmediatamente): Crea un IIFE que muestre en la consola el mensaje "IIFE ejecutado".
(function() {
    console.log("IIFE ejecutado");
})();

// Al ejecutar tu código, debería aparecer "IIFE ejecutado" en la consola.

// Función con Argumentos Variables: Crea una función llamada mostrarArgumentos que utilice el objeto arguments para imprimir todos los argumentos que se le pasen.
function mostrarArgumentos() {
    for (let i = 0; i < arguments.length; i++) {
        console.log(arguments[i]);
    }
}

// Ejemplo de uso:
mostrarArgumentos("Hola", 42, true);  // Debería mostrar "Hola", 42, true


function crearMultiplicador(factor) {
    return function(numero) {
        console.log(numero);
        console.log(factor);
    return numero * factor;
    };
  }
  const multiplicarPor3 = crearMultiplicador(6);
  const resultado = multiplicarPor3(4);
  console.log(`Resultado: ${resultado}`);
  

  function operacion(a, b, operador) {
    return operador(a, b);
  }
  const suma = operacion(5, 7, (a, b) => a + b);
  const resta = operacion(5, 7, (a, b) => a - b);
  console.log(`Suma: ${suma}`);
  console.log(`Resta: ${resta}`);


    let multiplicar = (a, b) => {
        return a * b;
    };
    let producto = multiplicar(3, 5);
    console.log(`Producto: ${producto}`);

    multiplicar = (a, b) => a * b;
    producto = multiplicar(2, 7);
    console.log(`Producto: ${producto}`);

    let calcularCuadrado = function(numero) {
        return numero * numero;
    };
    console.log(calcularCuadrado(4));

    calcularCuadrado = numero => {
        return numero * numero;
    };
    console.log(calcularCuadrado(8));

    calcularCuadrado = numero => numero * numero;

    console.log(calcularCuadrado(11));
      