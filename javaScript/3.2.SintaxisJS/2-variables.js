// 1. VARIABLES (var): guardan valores que podemos utilizar a lo largo de los programas JavaScript
// Se suelen declarar al comienzo de los programas javascript

/*
Hay tres tipos de variables: var, let, const
*/

// Utilizamos la palabra reservada var para crear variables, compuestas por un identificador y un valor
var x = 5;
var y = 2;
var year = 2022;

// OPCIÓN 1: ------------------- La más sencilla de modificar, solo modifico en un sitio
var currentYear = 2023; // hardcoded
console.log(currentYear);
console.log(currentYear);
console.log(currentYear);
console.log(currentYear);
console.log(currentYear);
// -------------------

// OPCIÓN 2: ------------------ Implica modificar todas las líneas de código si surge un cambio
console.log(2022);
console.log(2022);
console.log(2022);
console.log(2022);
console.log(2022);
// -------------------


// Cuando realizamos una operación con las variables se llama expresión
var numero1 = 5;
var numero2 = 10;
console.log(numero1 + numero2); // 15
var resultado = numero1 + numero2; // 15
console.log(resultado)
console.log("==================================")

var z = x + y; // 5 + 2
console.log(z);


// También podemos crear una variable sin asignar un valor, y asignarlo más tarde
var userName; // declarar una variable
userName = "Rodrigo"; // inicializar una variable

// También podemos inicializar muchas variables en una misma línea
var userName = "Rodrigo", lastName = "García", age = 20;

// si no asignamos ningún valor a una variable entonces esta será undefined
var ejemploUndefined;
// console.log permite mostrar el valor de una variable en la consola del navegador
console.log(ejemploUndefined);

// sobreescribir una variable: si asignamos un nuevo valor entonces la variable tendrá el último valor asignado
var miVar = 5;
console.log(miVar);
miVar = 15;
console.log(miVar);

// Los nombres de las variables pueden contener: A-Z o a-z, $, _
var $variable;
var _variable;
var Variable;

// Por convención escribimos los identificadores en lower camel case, es decir:
// La primera letra en minúscula y el resto si hay más de una palabra la primera letra mayúscula:
var variablee;
var myVariable;
var ejemploIdentificadoresVariables;
var userAge;

// 2. VARIABLES (let):
/* let es una nueva forma de crear variables, introducida en ECMAScript 2015 (ES6) */
let w = 10;
w = 12;

// 3. VARIABLES (const):
// const es una nueva forma de crear variables como constantes, no se cambian una vez se crean
// introducida en ECMAScript 2015 (ES6)
const december = 12;


// 4. TIPOS DE DATOS 


// Number
var length = 50;
var length2 = 50.43;

// String (Cadenas de texto)
var nombre1 = "Rodrigo";
var nombre2 = "Juan";

// Booleans (true o false) (verdadero o falso)
var hasLastName = true;
var hasCar = false;

// Arrays              0        1       2        3
var productNames = ["Balón", "Silla", "Mesa", "Taza"]

// Objetos
var product1 = {
    name: "Balón Liga 2005",
    description: "Balón de Caucho Liga 2005 material importado Noruega",
    price: 4.99,
    weight: 0.4,
    quantity: 4,
    hasOffer: true
}
product1 = {
    name: "Balón Liga 2006",
    description: "Balón de Caucho Liga 2006 material importado Noruega",
    price: 4.99,
    weight: 0.4,
    quantity: 4
}


// si tenemos una variable y queremos conocer el tipo de dato que es podemos usar el método typeof:
var miNumero = 5;
var miBoolean = false;
var miString = "Hola"
var miArray = ["Hola", "Adiós"] // los array son un tipo especial de objetos
var miVariable; // al no asignar valor será undefined
console.log(typeof miNumero) // number
console.log(typeof miBoolean) // boolean
console.log(typeof miString) // string
console.log(typeof miArray) // object
console.log(typeof miVariable) // undefined

var ejemploVariable = 5;
console.log(typeof ejemploVariable);
