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

var link = document.getElementById("emphasis");

link.addEventListener("click", function(e){
  destroy(e);
}, false);

function destroy(e){
  var target, parent, grandparent
  target = e.target;
  parent = target.parentNode;
  grandparent = parent.parentNode;
  grandparent.removeChild(parent);
  e.preventDefault();
}

function onscreen(){
  window.prompt("Hello World");
}

window.addEventListener("DOMContentLoaded", onscreen) //faster than 'load'