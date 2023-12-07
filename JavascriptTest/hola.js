// Write JavaScript here

function mostrar() {

    let valor = "  Hola como estas? Bien, gracias!  ";

    myArray[] = null;

    for (let i=0; i < myArray.length; i++){}

    myArray.push
    myA

    foreach (var element : myArray){}

    for (i < myArray.length; i++) {}

    for (i = 0; i <= miMatriz.longitud;){}

/*
    String functions

    alert(valor.length);
    alert(valor.charAt(valor.length-1));
    alert(valor.indexOf("!"));
    alert(valor.lastIndexOf("a"));
    alert(valor.replace("Bien", "Mal"));
    document.getElementById("verValor")
    .innerHTML=valor.slice(10);
    document.getElementById("verValor")
    .innerHTML=valor.split(" ");
    document.getElementById("verValor")
    .innerHTML=valor.toLocaleLowerCase();
    document.getElementById("verValor")
    .innerHTML=valor;*/

    /* 1. Crear variables y asignarles valores 

    let nombre="Angel";
    let edad=33;
    let esEstudiante=true;

    document.getElementById("verValor")
    .innerHTML=nombre+" - "+edad+" - "+esEstudiante;
*/

    /* 2. Operaciones matemáticas básicas 

    let num1=20;
    let num2=10;

    document.getElementById("verValor")
    .innerHTML="Suma: "+(num1+num2)+"<br>Resta: "+(num1-num2)
    +"<br>Multi: "+(num1*num2)+"<br>Div: "
    +(num1/num2)+"<br>Resto:"+(num1%num2);
*/
    /* 3. Concatenación de strings 

    let saludo="Hola";
    let persona="Angel";

    document.getElementById("verValor")
    .innerHTML="¡"+saludo+", "+persona+"!";
*/

    /* 4. Conversión de tipos 

    var numeroComoString="42"*2;

    numero=parseInt(numeroComoString);

    document.getElementById("verValor")
    .innerHTML=numeroComoString;
*/

    /* 5. Operadores de comparación 

    let num1=20;
    let num2=20;

    document.getElementById("verValor")
    .innerHTML="Valores: "+num1+" y "+num2+"<br>Igual: "
    +(num1==num2)+"<br>Disti: "+(num1!=num2)
    +"<br>Menor: "+(num1<num2)+"<br>Mayor: "+(num1>num2)
    +"<br><=:"+(num1<=num2)+"<br>>=:"+(num1>=num2);
*/

    /* 6. Operadores lógicos

    let num1=true;
    let num2=false;
    let num3=true;

    document.getElementById("verValor")
    .innerHTML="Valores: "+num1+" y "+num2+" y "+num3
    +"<br>Si: "+(num1&&num2)+"<br>Or: "+(num1||num2)
    +"<br>No: "+(num1!=num2);
 */

    const numeroComoString = "42";
    const numero = parseInt(numeroComoString);
    const resultado = numero * 2;
    console.log(`Resultado: ${resultado}`);
    alert(`${resultado}`);
    alert(resultado);


    document.getElementById("verValor")
    .innerHTML=resultado;
}

function pruebaArrays() {

    /* Arrays */

    const frutas = ['manzana', 'plátano', 'cereza'];
    alert(frutas);
    frutas[1] = 'uva';
    console.log(frutas); 

    let longitudArray=frutas.push("piña","pera"); //,"limon","sandia");
    console.log(frutas, longitudArray); 
/*
    longitudArray=frutas.pop();
    console.log(frutas, longitudArray); 

    longitudArray=frutas.shift();
    console.log(frutas, longitudArray); 

    longitudArray=frutas.unshift("kiwi","melon");
    console.log(frutas, longitudArray); 

    longitudArray=frutas.splice(2, 2);
    console.log(frutas, longitudArray); 
*/
    longitudArray=frutas.slice(0, 2);
    console.log(frutas, longitudArray);

    longitudArray=frutas.concat("cereza", longitudArray, "lima");
    console.log(frutas, longitudArray);

    longitudArray=frutas.join("<>");
    console.log(frutas, longitudArray);

    longitudArray=frutas.reverse();
    console.log(frutas, longitudArray);

    longitudArray=frutas.sort();
    console.log(frutas, longitudArray);
    
    console.log([11,2,22,1].sort());
    console.log([11,2,22,1].sort((a, b) => a - b));
    
    console.log(frutas.length)

    verValor(frutas);
}

function verValor(valor) {

    document.getElementById("verValor")
    .innerHTML=valor;
}
