/*
Estructura SWITCH:
    Cuando necesitamos evaluar muchas condiciones en lugar de utilizar if else if else repitiendo
    muchas veces la parte else if se puede optar por utilizar una estructura switch:
*/

var monthNumber = 13;
var monthName;
switch (monthNumber) {
    case 1:
        monthName = "ENERO";
        break;
    case 2:
        monthName = "FEBRERO";
        break;
    case 3:
        monthName = "MARZO";
        break;
    case 4:
        monthName = "ABRIL";
        break;
    case 5:
        monthName = "MAYO";
        break;
    case 6:
        monthName = "JUNIO";
        break;
    case 7:
        monthName = "JULIO";
        break;
    case 8:
        monthName = "AGOSTO";
        break;
    case 9:
        monthName = "SEPTIEMBRE";
        break;
    case 10:
        monthName = "OCTUBRE";
        break;
    case 11:
        monthName = "NOVIEMBRE";
        break;
    case 12:
        monthName = "DICIEMBRE";
        break;
    default:
        monthName = "ENERO"; // Por defecto el año empieza en ENERO
}

// Equivalente a evaluar con if else if
// if (monthNumber == 1) {
//     monthName = "ENERO";
// }else if (monthNumber == 2){
//     monthName = "FEBRERO";
// } ...

console.log(monthName);

