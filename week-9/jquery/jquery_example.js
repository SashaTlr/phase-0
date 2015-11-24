// U3.W9:JQuery
​
​
// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.
​
$(document).ready(function(){
​
//RELEASE 0:
  //link the image
​
//RELEASE 1:
​
  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
​
$('body').css({'background-color': 'pink'})
​
//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
headerElement = $('h1')
divClassElement = $('.mascot')
​
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$( "h1:first" ).css( "color", "blue" );
$( "h1:first" ).css( "border", "1px solid" );
$( "h1:first" ).mouseover(function() {
  $( this ).css( "visibility", "hidden" );
});
//RELEASE 4: Event Listener
  // Add the code for the event listener here
​
  $('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://4.bp.blogspot.com/-JMrboygBDpw/T0gMZvxRDdI/AAAAAAAAAIU/P-InezeMGRY/s1600/islandfoxpupIRose2009sm.jpg')
  })
​
  $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })
​
//RELEASE 5: Experiment on your own
​
$('img').mouseenter(function () {
  $(this).css({border: '0 solid #f37736'}).animate({
  borderWidth: 4
  }, 500);
});
​
$( "img" ).mouseover(function() {
  $( "img" ).animate({
    width: "-=20px"
  }, 5000, function() {
    mouseout
  });
});
​
​
​
​
})  // end of the document.ready function: do not remove or write DOM manipulation below this.


//What is jQuery?
//jQuery is a JavaScript library (or "framework") that makes working
//with the HTML document easier. It also has methods to help with
//CSS manipulation, animations, and AJAX. There are other frameworks
//available, but jQuery is the most popular and has a lot of plug-
//ins available.

//What does jQuery do for you?
//See above... It greatly simplifies working with the DOM through
//JavaScript.

//What did you learn about the DOM while working on this challenge?
//The most useful thing I learned was understanding how the nodes
//work. I was confused as to why the syntax differs in accessing
//nodes, classes, tags, etc in jQuery vs JavaScript. It's confusing
//learning both simultaneously.