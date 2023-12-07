
// function greaterThan100(number){
//     return number > 100 && number < 80;
// }
// function lessThan50(number){
//     return 5 < 10 && 10 < 20;
// }

// if (lessThan500(10) && greaterThan100(10)) { 
//     console.log('5 < 10 && 10 < 20 es verdadero');
// } 

if (5 > 10 && (10 < 20 && true)) {
    console.log('5 > 10 || 10 < 20 es verdadero -- OPERADOR OR')
}

if(5 < 10){
    console.log("verdadero")
}else{
    console.log("falso")
}

5 < 10 ? console.log("verdadero") : 10 > 20 ? console.log("verdadero") : console.log("falso");