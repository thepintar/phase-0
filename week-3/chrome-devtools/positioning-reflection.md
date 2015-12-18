
#Challenge Images
![Alt text](/week-3/chrome-devtools/imgs/1_change_colors.png)
![Alt text](/week-3/chrome-devtools/imgs/2_column.png)
![Alt text](/week-3/chrome-devtools/imgs/3_row.png)
![Alt text](/week-3/chrome-devtools/imgs/4_equidistant.png)
![Alt text](/week-3/chrome-devtools/imgs/5_squares.png)
![Alt text](/week-3/chrome-devtools/imgs/6_footer.png)
![Alt text](/week-3/chrome-devtools/imgs/7_header.png)
![Alt text](/week-3/chrome-devtools/imgs/8_sidebar.png)
![Alt text](/week-3/chrome-devtools/imgs/9_creative_uncreative.png)

##How can you use Chrome's DevTools inspector to help you format or position elements?

Chrome's DevTools uses a really convenient checkbox system to illustrate each element and its properties, which can be switched on and off to see their effects, or changed to adjust the element/object. You can also jump inside the html or css to adjust the properties there. Another handy feature of the inspector is that when you highlight an element in the html, it is highlighted within the page as well, so you can see what the bounds of the element are, and what other elements its position might be affecting.

##How can you resize elements on the DOM using CSS?

You can affect the properties of "height" and "width," for instance, or adjust "font-size".

##What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?

First of all, absolute is the most difficult one, and that has to be across the board. Absolute position is a position relative to the first parent element without a static position? I mean, wtf? I played with it a bunch in this last challenge, and I guess since the divs were all children of the body, it meant that any div with absolute position was being positioned relative to the body's position. Umm... Well in practice it seemed to pluck the div up from being a block and turned it into a floating element. It looks like it could be really useful some day, but at the moment I need some more exposure. Checking out some youtube tutorials next.
Just for clarity, add this to what I said earlier: "However; if an absolute positioned element has no positioned ancestors, it uses the document body, and moves along with page scrolling." Thats pretty nuts. Its a party position, thats for sure.

Fixed positioning means that wherever you put the element, it will remain there with other elements sliding behind it when the page is scrolled. This was my favorite because I can see a lot of useful and fun application.

Relative position means the element is positioned relative to where it defaults. This one at least makes a lot of sense. You're like...hey! Where are you suppose to be! And the element points, and you say, "Okay then move left from there 20 pixels!" Bam. Relative to its normal position, it moves left. Relative. Get it?!

Static position is the simplest. It's the default and it eliminates the use of the "top," "bottom," "left," and "right" properties. Objects with static position are positioned with the standards of the page. Totes normy.

##What are the differences between margin, border, and padding?

The margin sits outermost, and it represents the space between the border and other elements outside of itself. The border sits between the margin and the padding, outside the main element content. The padding is what seperates the element's content from its border.

##What was your impression of this challenge overall? (love, hate, and why?)

This challenge was a lot of fun. it helped to solidify my understanding of positioning, and also added a new tool to my arsenal as a developer. I feel I can explore the web in a whole new way.