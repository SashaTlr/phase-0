#Section 3.4 Chrome Dev Tools

##Release 3: Exercises

### Change the Colors
Change the background-color of the boxes.
![Change the Colors](Screenshots_3_4/Release3_1.png)

### Column
Stack the elements in top of one another without any space between them (in order)
![Change the Colors](Screenshots_3_4/Release3_2.png)

### Row
Put the boxes in a row. Have the boxes that have size dimensions defined keep their original shape and size
![Change the Colors](Screenshots_3_4/Release3_3.png)

### Make Equidistant
Put the boxes in a row. The sizes should be identical automatically. Put 5em of distance between them. Then add 5em from the top of the page.
![Change the Colors](Screenshots_3_4/Release3_4.png)

### Squares
Resize the boxes so they are squares.
![Change the Colors](Screenshots_3_4/Release3_5.png)

### Footer
Make div-1 a footer. Make the height 2em, the width 100% of the screen (Get rid of that annoying gray to the left). Then move it to the bottom of the page.
![Change the Colors](Screenshots_3_4/Release3_6.png)

### Header
Now move div-2 to the top of the page and make it 5em tall. It should always be at the top of the browser window. Make the width 50% of the entire screen and center it.
![Change the Colors](Screenshots_3_4/Release3_7.png)

### Sidebar
Move div-3 to the right so it looks like a right sidebar it should be 15% the width of the screen and 100% of the height of the viewer window. You'll want to get help from Google on this one.
![Change the Colors](Screenshots_3_4/Release3_8.png)

### Get Creative
![Change the Colors](Screenshots_3_4/Release3_9.png)

## Release 4: Reflect
###How can you use Chrome's DevTools inspector to help you format or position elements?
DevTools inspector lets you do a temporary addition, deletion, or modification to the HTML and CSS of a website's source code. To help format or modify position elements, open the Inspector, look at the Elements tab, and select the Styles window. The Styles contain the information from the stylesheet for the selected element. In the styles window, CSS can either be modified or overwritten using element.style. Via inspector, you can modify appearance of an element, display settings, etc. The stylesheet can even be exported to a text editor, but you have to be careful to copy over edits frequently, because if you reload the webpage, you will lose any edits that you have made.

###How can you resize elements on the DOM using CSS?
Elements on the DOM can be resized in the Styles window using CSS. There are various ways to modify sizes. You can adjust the length and width, add margin and padding, or change the size of the content.

###What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?

1. The default position for an element is static. This means that it is positioned according to the flow of the page. It doesn't have the left, right, top, and bottom properties.

1. Relative positioning was confusing for me because 'relative' sounds like it would be relative to the main page. However, relative really means that the element will be positioned relative to it's normal or static position. Relative takes the top, bottom, left, right properties, so if they are set to 0, the element will look like static positioning.
There are two things to note with relative positioning. One is that relative elements will be positioned on top of static elements. This is it's z-index value, and is similar to layering, where a layer is brought to the front.
The second thing that happens is that any child elements of a relative element that has absolute positioning will be positioned relative to this parent element.

1. Absolute positioning: Absolute positioning accepts top, bottom, left, and right positioning. It positions itself relative (hence the confusion!) to it's closest non-static ancestor. So if the element is a child of a relative element (think about the hierarchy of a DOM tree), it's position is determined relative to it's parent. If there is no positioned ancestor, it will position itself relative to the body element.

1. Fixed: Unlike absolute positioning, a fixed element is relative to the viewport, so will remain in it's position on your screen no matter which direction you scroll. A great example are sign up fields that follow you as you scroll down a screen. ClassPass also uses fixed positioning in their home page.

###What are the differences between Margin, Border, and Padding?
If we think of each element as a picture frame, then the padding is the mat board in a frame, which surrounds the content. The border is the picture frame itself, and the margin is the space around the picture frame that cannot be shared with another frame. The padding defines the space between the content and the border. The border is what we are used to seeing, and can be a line of any format, thickness, and color which surrounds the padding. The margin blocks of space around the border but will not carry characteristics from the content such as background color, unlike padding.

###What was your impression of this challenge overall? (love, hate, and why?)
This was a good challenge as it allowed us to practice the display function. I think we needed some practice using responsive design as we realized that even if something looked okay on our screen, if we shrunk the browser, everything would realign. Since responsive design has been talked about so much in the videos, I thought that we should have addressed it in the challenges.