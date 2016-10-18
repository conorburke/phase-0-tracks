var paragraph = document.getElementsByTagName("p");
paragraph[0].style.color = "pink";

var image = document.getElementsByTagName("img")
function disappear(){
  image[0].style.visibility = "hidden";
} 

// When button is clicked, the image would disappear
var button1 = document.getElementsByTagName("button");

button1[0].addEventListener("click", function(){
  disappear();
})