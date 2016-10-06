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
/*
function longest_phrase(phrases){
  var longest = "";
  for (var i = 0; i < phrases.length; i++){
    if (phrases[i].length > longest.length){
      longest = phrases[i];
    } 
  }
  return longest;
}

var phrases = ["hello world", "jet force gemini", "oh nothing"];
console.log(longest_phrase(phrases));
var teams = ["Eagles", "Cowboys", "Giants", "Redskins"];
console.log(longest_phrase(teams));
var matrix = ["Morpheus", "Neo", "Trinity"];
console.log(longest_phrase(matrix));
*/
/*
  pseudocode a key:value matching algorithm
  -define a function that takes two inputs (both objects)
  -check to see if both objects contain a matching key
    -use hasOwnProperty for this
    -loop through one object and add its keys to array
    -compare data in array to keys of second object
  -if they do have the same key at least once
    -check to see if the values are the same
      -if so, return true
      -if not, return false
    -if they don't have any of the same key, return false
*/

var people = {conor: 27, mack: 27, mike: 26}
var other_people = {pete: 28, john: 29, mack: 27}

function keyvalue_match(first_set, second_set){
  check_keys = [];
  for (var property in first_set){
    check_keys.push(property);
  }
  for (var i = 0; i<= check_keys.length; i++){
    if (second_set.hasOwnProperty(check_keys[i])){
      return true;
    }
  }
  return false
  //return check_keys;
}

console.log(keyvalue_match(people, other_people));































