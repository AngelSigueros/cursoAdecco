// Write JavaScript here

function mostrar() {

    let valor = "  Hola como estas? Bien, gracias!  ";
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
    .innerHTML=nombre+" - "+edad+" - "+esEstudiante;*/

    /* 2. Operaciones matemáticas básicas */

    let num1=20;
    let num2=10;

    document.getElementById("verValor")
    .innerHTML="Suma: "+(num1+num2)+"<br>Resta: "+(num1-num2)+"<br>Multi: "+(num1*num2)+"<br>Div: "+(num1/num2)+"<br>Resto:"+(num1%num2);

    /* 3. Concatenación de strings */

    let num1=20;
    let num2=10;

    document.getElementById("verValor")
    .innerHTML="Suma: "+(num1+num2)+"<br>Resta: "+(num1-num2)+"<br>Multi: "+(num1*num2)+"<br>Div: "+(num1/num2)+"<br>Resto:"+(num1%num2);

}
