
// Variable coche:

var car1 = "Volvo";
var carColor = "black";

// Objeto coche

var car2 = {
    manufacturer: "Volvo",
    model: "XC90",
    color: "white",
    weight: 1900
}
var car3 = {
    manufacturer: "Volvo",
    model: "XC90",
    color: "white",
    weight: "1900"
}

let person = {
    firstName: "Juan",
    lastName: "García",
    age: 65,
    married: true
}
person.lastName
person["lastName"]
// Acceder a las propiedades de un objeto

console.log(car2.manufacturer)
console.log(car2.model)

console.log(car2["manufacturer"])
console.log(car2["model"])

// métodos dentro de objetos

var car3 = {
    // propiedades o atributos, estado
    manufacturer: "Volvo",
    model: "XC90",
    color: "white",
    weight: "1900",
    // comportamiento
    description: function () {
        return this.manufacturer + " " + this.model; // La palabra this nos permite acceder a las propiedades del objeto desde las funciones del mismo
    },
    acelerar: function(){

    },
    frenar: function(){

    }
}

console.log(car3.description())


// objeto persona

var person = {
    firstName: "Ricardo",
    lastName: "Rocatagliata",
    age: 50,
    eyeColor: "blue",
    greeting: function(name){
        return "Hi " + name + ", I'm " + this.firstName + " " + this.lastName;
    }
};

console.log(person)
console.log(person.eyeColor)
console.log(person.greeting("Alan"))

// A partir de ECMAScript 2015 (ES6) se incluyen las Clases en JavaScript
// Las clases son plantillas para crear objetos

class Car {

    // Método constructor, permite crear objetos a partir de la clase
    constructor(manufacturer, model, color, weight) {
      this.manufacturer = manufacturer;
      this.model = model;
      this.color = color;
      this.weight = weight;
    }
  }

// Crear un objeto a partir de la clase:

var theCar1 = new Car("Ford", "Mondeo", "white", 1877)
var theCar2 = new Car("Audi", "R8", "black", 1690)
console.log(theCar1)
console.log(theCar2)
