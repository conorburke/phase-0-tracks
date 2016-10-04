// Pseudocode a function to reverse a word
// -declare a function and above that two empty string variables
// -the function includes a loop that goes over each character
//  in the word, starting at the last one
// -the characters are then stored in the new word in that
//  order

var str = "hello";
var new_str = "";

function reorder(word, new_word){
  for (var i = word.length ; i >= 0; i--) {
    console.log(word.charAt(i));
  }
}