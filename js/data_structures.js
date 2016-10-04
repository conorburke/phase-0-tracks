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
