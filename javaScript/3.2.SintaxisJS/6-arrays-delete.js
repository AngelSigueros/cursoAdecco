
//            0  1  2  3
var array2 = [2, 5, 9, 10]; // longitud 4

console.log(array2.indexOf(2));// 0
console.log(array2.indexOf(5)); // 1
console.log(array2.indexOf(9)); // 2
console.log(array2.indexOf(10)); // 3
console.log(array2.indexOf(20)); // -1
console.log(array2.indexOf(50)); // -1

array2.splice(array2.indexOf(9), 3);

console.log(array2)
// delete array1[2]; // 9
// console.log(array1)
// console.log(array1.length)