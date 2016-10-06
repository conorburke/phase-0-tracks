/*
Release 0
  pseudocode function for longest word in array
    -create array with several strings stored in it
    -define function that takes one parameter (an array)
    -in function, loop through the strings in the array
      -find and store the length of each string
      -keep track of which one is the longest and store that in 
        a separate variable
      -return the variable that has the longest string stored in it
*/

function longest_phrase(phrases){
  var longest = "";
  for (var i = 0; i < phrases.length; i++){
    if (phrases[i].length > longest.length){
      longest = phrases[i];
    } 
  }
  return longest;
}

// var phrases = ["hello world", "jet force gemini", "oh nothing"];
// console.log(longest_phrase(phrases));
// var teams = ["Eagles", "Cowboys", "Giants", "Redskins"];
// console.log(longest_phrase(teams));
// var matrix = ["Morpheus", "Neo", "Trinity"];
// console.log(longest_phrase(matrix));

/*
Release 1
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

function keyvalue_match(first_set, second_set){
  check_keys = [];
  for (var property in first_set){
    check_keys.push(property);
  }
  for (var i = 0; i<= check_keys.length; i++){
    if (second_set.hasOwnProperty(check_keys[i])){
      if (first_set[check_keys[i]] === second_set[check_keys[i]]){
        return true;
      }
    }
  }
  return false
  //return check_keys;
}

// var people = {conor: 27, mack: 27, mike: 26};
// var other_people = {pete: 28, john: 29, mack: 27};
// console.log(keyvalue_match(people, other_people));
// var languages = {ruby: "easy", java: "medium", c: "hard"};
// var languages2 = {spanish: "easy", chinese: "medium", icelandic: "hard"};
// console.log(keyvalue_match(languages, languages2));

/*
Release 2
  pseudocode a random array generator
    -define a function that takes a single integer parameter
    -create a blank array in function
    -loop through and add strings to array equal to integer parameter
      -for each array index, generate a random number between 1 and 10
        -this is the length of the word at that position
        -set this equal to a new variable
        -use a for loop that iterates for as long as this rand number is
          -create a blank string
          -generate a random number between 97 and 122 to get letters
            -may need to be between 1 and 26 and add 96
          -convert those numbers to letters and append to string

*/

function random_words(num){
  generated_list = [];
  for (var i = 0; i < num; i++){
    random_number = Math.floor((Math.random() * 10) + 1);
    next_word = "";
    for (var c = 0; c < random_number; c++){
      second_random = Math.floor((Math.random() * 26) + 97);
      next_char = String.fromCharCode(second_random);
      next_word += next_char;
    }
    generated_list.push(next_word);
  }
  return generated_list;
}

// console.log(random_words(3));
// console.log(random_words(5));

// final driver code
var count = 10;
for (i = 0; i < count; i++){
  var new_random = Math.floor((Math.random() * 7) + 1);
  var current_array = random_words(new_random);
  console.log(current_array);
  var long_phrase = longest_phrase(current_array);
  console.log(long_phrase);
}





























































