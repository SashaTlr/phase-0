// DOM Manipulation Challenge


// I worked on this challenge with Nicola


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').className = "done";



// Release 1:
document.getElementById('release-1').style.display = "none";



// Release 2:
var x = document.getElementsByTagName("h1");
x[0].innerHTML = "I completed release 2.";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var y = document.getElementsByClassName("release-4");
var i;
for (i = 0; i < y.length; i++) {
y[i].style.fontSize = "2em";
}

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection
//What did you learn about the DOM?
//I'm starting to understand how to access elements and tags correctly. I'm finding the documentation really hard to navigate right now, it seems to be more constructive to just search through google than wade through the MDN docs.

//What are some useful methods to use to manipulate the DOM?
//Understanding the getElements functions and how they work a bit
//like an array is useful and took a while to figure out. Of course,
//understanding how to manipulate the css properties is useful as
//well and is great to see visually.