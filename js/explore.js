// Pseudocode a function to reverse a word
// -declare a function that takes a variable for the word to
//  be reordered
// -inside function declare a blank string that will get the
//  new characters
// -the function includes a loop that goes over each character
//  in the word, starting at the last one
// -the characters are then stored in the new word in that
//  order
// -the new word is returned outside the loop


function reorder(word){
  var new_str = "";
  for (var i = word.length - 1 ; i >= 0; i--) {
    new_str += word.charAt(i);
  }
  return new_str
}

var str = "hello!";
console.log(reorder(str));
var str2 = "gemini";
var string2 = reorder(str2);
console.log(string2);

var str3 = "Bailey"
if (13 > 12 && true || false){
  console.log(reorder(str3));
}