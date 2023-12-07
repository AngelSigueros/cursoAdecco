/*
En este script hablamos del alcance o scope de las funciones
*/


var lastnameExample = "García"; // scope GLOBAL

// La variable name se crea dentro de la función, por tanto no es visible fuera de la función
function function1(){
    var nameExample = "Ryan"; // scope LOCAL
    console.log(nameExample); // Ryan
    console.log(lastnameExample); // García
}


// ESTOY FUERA DE LA FUNCIÓN ---------
function1(); // Ryan
console.log(lastnameExample); // Ryan - funciona porque la variable ha sido creada fuera de las funciones
console.log(nameExample); // García - Da error porque nameExample no está definido, solo existe dentro de la función
