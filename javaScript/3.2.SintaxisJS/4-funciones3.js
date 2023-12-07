/*
Ejemplos de algoritmos
Teniendo en cuenta que la fórmula para convertir grados celsius a grados Fahrenheit es:
F = 9*C/5 + 32
Crear una función que nos permita realizar este proceso
*/
function toFahrenheit(celsius) {
    return celsius * 9 / 5 + 32;
}

function toCelsius(fahrenheit) {
    return (5 / 9) * (fahrenheit - 32);
}

function suma(num1, num2){
    return sum1 + sum2;
}


console.log(toFahrenheit(30)); // 30ºC son 86ºF
console.log(toCelsius(86)); // 86ºF son 30ºC
console.log(toCelsius(86)); 
console.log(toCelsius(40)); 