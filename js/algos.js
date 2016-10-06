/*
  pseudocode function for longest word in array
    -create array with several strings stored in it
    -define function that takes one parameter (an array)
    -in function, loop through the strings in the array
      -find and store the length of each string
      -keep track of which one is the longest and store that in 
        a separate variable
      -return the variable that has the longest string stored in it
*/

var phrases = ["hello world", "jet force gemini", "oh nothing"]

function longest_phrase(phrases){
  var longest = "";
  for (var i = 0; i < phrases.length; i++){
    if (phrases[i].length > longest.length){
      longest = phrases[i];
    } 
  }
  return longest
}

console.log(longest_phrase(phrases));
