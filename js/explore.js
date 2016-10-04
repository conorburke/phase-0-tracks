// Pseudocode a function to reverse a word
// -declare a function and above that two empty string variables
// -the function includes a loop that goes over each character
//  in the word, starting at the last one
// -the characters are then stored in the new word in that
//  order

var str = "hello!";

function reorder(word){
  var new_str = "";
  for (var i = word.length - 1 ; i >= 0; i--) {
    new_str += word.charAt(i);
  }
  return new_str
}

console.log(reorder(str));