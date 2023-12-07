/*

Utilizamos estructuras de control condicional para dividir el flujo de ejecución 
de los scripts cuando queremos que se ejecuten ciertas partes del código en función 
de si se cumplen ciertas condiciones o no.

if 
else 
else if

Bifuraciones en el código
*/


// 1. IF comprobar si se cumple una condición
var check = true;
if (check) {
    // Este código se ejecuta solo si la condición se cumple
    console.log('Hola desde el interior de if(check)');
}
console.log("HOLA AMIGOS!");


// 2. IF ELSE
var check2 = false;
if (check2) { // SI SE CUMPLE LA CONDICIÓN
    console.log('Condición check2 verdadera')
} else { // SI NO SE CUMPLE LA CONDICIÓN
    console.log('Condición check2 falsa')
}

// Otro ejemplo if else
var ejemploBooleano = true; 
var num = 0;
if (ejemploBooleano) {
    num = 5; // CUANDO SI
} else {
    num = 10; // CUANDO NO
}
console.log(num);


// 3. IF - ELSE IF - ELSE
check = false;
check2 = false;
if (check) {
    // Este código se ejecuta solo si la condición 1 se cumple
    console.log('Condición 1 verdadera')
} else if (check2) {
    // Este código se ejecuta solo si la condición 2 se cumple
    console.log('Condición 2 verdadera')
} else {
    // Este código se ejecuta solo si la condición 1 y la condición 2 NO se cumplen
    console.log('Ninguna condición se cumplió, ejecutamos el código dentro de else.')
}

if (condition1) {
    
} else if (condition2){
    // ...
}  else if (condition3){
    // ...
} else if (condition4){
    
} else if (condition5){
    
} else {

}

if (condition1) {
   // ... 
} else if (condition2){
    // ...
}  else if (condition3){
    // ...
} else if (condition4){
    
} else if (condition5){
    
} // Tambien puede no estar el else