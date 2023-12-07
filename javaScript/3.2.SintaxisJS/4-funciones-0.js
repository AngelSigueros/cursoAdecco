function imprimirSaludo(){
    let number1 = 10;
    let number2 = 15;
    let resultado = number1 + number2;
    // console.log("Hola, resultado: " + number1 + number2); // 1015
    // console.log("Hola, resultado: " + resultado); // 25
}

imprimirSaludo(); // invocar


// ==============================================================


// A partir de ES6 es posible definir valores por defecto a los parámetros como ocurre en Python
function multiply(number1=0,number2=0){
    return number1 * number2;
}
console.log(multiply());


function function4(name = 'Josep') {
    console.log('Hola ' + name)
}


function4("Alan");
function4(); // Imprime Hola Josep porque tiene establecido un valor por defecto para cuando no enviamos el parámetro
