/*
Un array es una estructura de datos, variable especial que permite almacenar un conjunto de datos
*/
//              0       1      2        3       4
var names = ["Bob", "John", "Raúl", "Wally", "Diego"] // longitud 5, pero el ultimo elemento es índice 4 porque empezamos en 0
var numbers = [1, 5, 9, 13, 15, 17, 14, 22, 23, 20]

// Para acceder a un elemento concreto de un array utilizamos [] y la posición del elemento
// El índice o posición de los arrays empieza siempre en 0

var firstName = names[0];
var secondName = names[1];

var firstNum = numbers[0];
var secondNum = numbers[1];

// obtener la longitud de un array
console.log("names length: " + names.length)

// Añadir elementos al array
names.push("Gandolfi");
console.log("names length: " + names.length)

// Acceder al último elemento de un array
var lastElement = names[names.length - 1]
console.log("Último elemento: " + lastElement)

// Iterar sobre los elementos de un array
for (i = 0; i < names.length; i++) {
    names[i] = names[i] + " Editado"; // esto concatena el texto Editado a cada nombre original
    console.log("names[" + i + "]: " + names[i])
   
}
// Modificar un elemento de un array
console.log("Nombre antes de modificar: " + names[0])
names[0] = "Calamardo";
console.log("Nombre después de modificar: " + names[0])

// Crear un array vacío y añadir elementos después 
var quotes = []; // array vacío []
console.log("quotes length: " + quotes.length) // Imprime 0 
quotes[0] = "Lorem ipsum dolor, sit amet consectetur adipisicing elit 1"
quotes[1] = "Lorem ipsum dolor, sit amet consectetur adipisicing elit 2"
quotes[2] = "Lorem ipsum dolor, sit amet consectetur adipisicing elit 3"
console.log("quotes length: " + quotes.length) // Imprime 3 porque hemos añadido 3 elementos

// Eliminar un elemento de un array con delete (la longitud y los demás elementos se mantienen igual)

var array1 = [2, 5, 9, 10]; // longitud 4
console.log(array1)
delete array1[2];
console.log(array1)
console.log(array1.length)

// Eliminar un elemento de un array con splice (la longitud y los demás elementos se mantienen igual)

var array2 = [2, 5, 9, 10];
console.log(array2);

var index = array2.indexOf(5); // con el método indexOf obtenemos el índice del elemento que queremos
if (index > -1) {
    array2.splice(index, 1); // con el método splice podemos borrar uno o más elementos a partir de un índice
}
console.log(array2); 
console.log(array2.length); 