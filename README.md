High Score Display for Visionaire Studio: Adventure Game Engine [Lua]

Allows you to display a high score via an interface. The score gets updated everytime the function *below* is executed...
```
setScore(, true/false)
```

== Instructions ==

1. Add the main script to the Visionaire Studio Script Editor & set the script as a definition script.

2. Create a new interface score_interface.

3. Create 8 buttons & name them like so: **btn_inc**, **btn_d1**, **btn_d2**, **btn_d3**, **btn_d4**, **btn_d5**, **btn_d6**, **btn_d7**.

4. Create & add the score interface background image to the properties section of the interface.

5. Set the absolute position of the interface; based on game default resolution.

6. You need to create 12 png images with transparent backgrounds; the width/height of each should be exactly the same.
    
    b. 10 of the images should contain a single number; from *0 to 9*.
    
    c. a single image should be left blank; this will be used to hide inactive digits.
    
    d. The last one should contain a **-**; if the score value is a negative value then this will be shown before the first number.
    
    e. Save each of the number images, same as the number you added to them, like so: **n_0**, **n_1**, **n_2**, etc...
    
    f. Save the blank image as **n_10**; the reason you are saving them like this is so that you can import them as a set animation, as opposed to having to add each animation frame one at a time.
    
    g. Save the **-** image as whatever you like.

7. Create an animation for each of the buttons & name them like so: **ani_d1**, **ani_d2**, **ani_d3**, **ani_d4**, **ani_d5**, **ani_d6**, **ani_d7**, **ani_inc**; the names should reflect the value after the *btn_ prefix*.

8. Load the number animations into each of the numbered buttons, as a set.

9. For the **btn_ani** animation create 2 frames & load in the blank image into the first frame, & the "**-**" image 
into the second frame.

10. Inside of the properties tab for each button set default animation to the animation you added to the button.

11. Add value "**v_score** to the value tab of the score_interface & set default value to **0**.

12. To add to the current score, create an execute a script action containing... 
```
setScore(n, true) -- replace n with number you want to add to the current score.
```
13. To subtract from the current score, create an execute a script action containing...
```
setScore(n, false) -- replace n with number you want to subtract from the current score.
```
