/*
Una función es un bloque de código programado para ejecutar una determinada tarea
Envolvemos dicho bloque en una función para poder reutilizarlo las veces que sea necesario
sin tener que repetir constantemente las mismas líneas de código
*/

var variable1 = 5;
let variable2 = 5;
const variable3 = 10;

/*
Esta función obtiene el tiempo de la API AEMET de Madrid
y lo procesa y lo devuelve en grados centígrados
*/
function obtenerTiempoMadrid(){





}
function imprimirSaludo(){
    let number1 = 10;
    let number2 = 15;
    let resultado = number1 + number2;
    console.log("Hola, resultado: " + number1 + number2); // 1015
    console.log("Hola, resultado: " + resultado); // 25
}

imprimirSaludo; // invocar
// imprimirSaludo();
// imprimirSaludo();


// Función que imprime un saludo por consola 
function function1() {
    console.log('Hi from function1');
}

function1(); // Para ejecutar una función escribimos su nombre y paréntesis
function1(); // Podemos ejecutar una misma función todas las veces que queramos
function1(); // Podemos ejecutar una misma función todas las veces que queramos

// Función que recibe un nombre como parámetro e imprime un saludo utilizando dicho nombre
function function2(name) {
    console.log('Hola ' + name);
    console.log('Adiós ' + name);
}

function2('Mike'); // Cuando ejecutamos una función que recibe parámetros tenemos que enviar el valor
function2('Alan');
function2(); // Imprime Hola undefined porque no estamos enviando el parámetro

// Función que recibe dos parámetros y realiza una operación
function function3(num1, num2) {
    console.log("Ejecutando function3");
    return num1 + num2; // La palabra return nos permite devolver el resultado al lugar que invocó la función
}

// Caso 1: no almaceno el resultado de function3 en ninguna variable pero sí lo imprimo
console.log(function3(5, 10));

// Caso 2: sí almaceno el resultado de function3 en una variable que después puedo utilizar las veces que necesite
var resultado = function3(5, 10); // la función devuelve un resultado que podemos asignar a una variable
console.log("Resultado: " + resultado);
console.log("Resultado: " + resultado);


// A partir de ES6 es posible definir valores por defecto a los parámetros como ocurre en Python
function function4(name = 'Josep') {
    console.log('Hola ' + name)
}



function4("Alan");
function4(); // Imprime Hola Josep porque tiene establecido un valor por defecto para cuando no enviamos el parámetro

function saveEmployee(param1, param2, param3, param4, param5) {
    // .......
    // .......
    // .......
    return 5;
}

nombreFuncion(); // SE EJECUTA 1 SOLA VEZ


function processObject(object1){
object1.param1
}
let object1 = {
    param1: 'value1',
    param2: 30,
    param3: true,
}
// processObject(param1, param2, param3, param4)
processObject(object1)