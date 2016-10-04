var colors = ["blue", "green", "pink", "black"];
var horses = ["Gallop", "Jumper", "Secretariat", "George"];

colors.push("red");
horses.push("Lenny");

console.log(colors);
console.log(horses);
var stable = {};
if (colors.length === horses.length){
  for (i=0; i<colors.length; i++){
    stable[horses[i]] = colors[i];
  }
}
console.log(stable);


function Car(brand, type, year){
  this.brand = brand;
  this.type = type;
  this.year = year;
  this.drive = function() {console.log("Vroom!");};
}

var car1 = new Car("Toyota", "Tacoma", 2007);
console.log(car1);
car1.drive();
console.log("-----");
var car2 = new Car("Chevrolet", "Corvette", 2016);
console.log(car2);
car2.drive();
console.log("-----");