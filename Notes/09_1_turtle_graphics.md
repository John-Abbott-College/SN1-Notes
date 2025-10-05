### Python Turtle Graphics

The `turtle` module in Python is an excellent tool for introducing programming through graphics. It allows you to control a "turtle" that moves around the screen, drawing as it moves. With simple commands, you can create shapes, patterns, and even games!

In this tutorial, you'll learn the basics of using `turtle` in Python, how to control the turtle’s movement, and how to create shapes and customize your drawings.

See the [official documentation](https://docs.python.org/3/library/turtle.html) for more information.

---

### Overview

Imagine you have a turtle with a pen attached to its tail. This turtle is sitting on a piece of paper.

<img src="Images/turtle_pen_down.png" alt="turtle pen down" style="zoom:25%;" /> If the pen is down, and the turtle moves, a line is drawn.

<img src="Images/turtle_pen_up.png" alt="turtle pen up" style="zoom:25%;" /> If the pen is up, and the turtle moves, no line is drawn.

- You can tell the turtle to put its pen up or down
- You can modify the direction that the turtle is facing (turn right or left)
- You can tell the turtle to move forward (or backwards)
- You can tell the turtle to go to specific locations

With these simple commands, we can do amazing thing! However, this is not all we can do. See the [official documentation](https://docs.python.org/3/library/turtle.html) for more information.

---

### First turtle program

```python
import turtle
turtle.forward(100)
turtle.right(30)
turtle.forward(50)
turtle.mainloop()
```

#### Analysis

**Line 1**

​ To use the turtle program, you need to import the library

**Line 2, Line 4**

​ Tell to the turtle to move forward, in whatever direction it is currently facing

**Line 3**

​ Tell the turtle to turn right by 30 degrees

**Line 5** - Important

​ This just pauses the turtle program, so that you can see what the turtle has drawn. Without this, the program just closes, and you can't see your wonderful art. Do NOT add any new drawing commands after this, because you won't see them :(

---

## Using Turtle in a Python Program

### Import the Turtle Module

First, ensure that you have Python installed. The `turtle` module comes with Python, so you don’t need to install anything extra.

Start by importing the `turtle` module. This module provides all the functions you need to draw shapes on the screen.

```python
import turtle
```

This line imports the turtle module so you can use its functions in your code.

---

### To draw or not to draw?

To draw, tell the turtle to put the pen down. If you want to move the turtle without drawing, tell the turtle to put its tail up.

- **`down()`**: Pull the pen down – drawing when moving.

- **`up()`**: Pull the pen up – no drawing when moving.

**Example:**

<img src="Images/turtle_dotted_line.png" alt="dotted line drawn by turtle program" style="zoom:50%;" /> Note that the "arrow" in the image is actually just the default image of the turtle.

```python
# Draw a dashed line
import turtle
turtle.forward(10)
turtle.up()
turtle.forward(10)
turtle.down()
turtle.forward(10)
# ... repeat as necessary
turtle.mainloop()
```

---

### Move the Turtle

You can move the turtle forward and backward, go to a specific location, and turn it to the left or right. Here are the basic movement commands:

These commands let you control how the turtle moves around the screen.

#### Move Forward and Backward

- **`forward(distance)`**: Moves the turtle forward by the specified distance.

- **`backward(distance)`**: Moves the turtle backward by the specified distance.

**Example:**

```python
turtle.forward(100)  # Moves turtle forward by 100 units
turtle.backward(50)  # Moves turtle backward by 50 units
```

#### Turn the Turtle

You can turn the turtle, relative to the direction it is currently facing, using:

- **`right(angle)`**: Turns the turtle clockwise by the specified angle (in degrees!).
- **`left(angle)`**: Turns the turtle counterclockwise by the specified angle (in degrees!).

**Example:**

```python
turtle.right(90)  # Turns the turtle 90 degrees to the right
turtle.left(45)   # Turns the turtle 45 degrees to the left
```

You can also turn the turtle without regarding the direction it is currently facing, using:

- **`setheading(angle)`**: Turn the turtle to a specific direction (in degrees!)

**Example:**

```python
turtle.setheading(0)  # Turns the turtle to face east
turtle.setheading(90)  # Turns the turtle to face north
turtle.setheading(180)  # Turns the turtle to face west
turtle.setheading(270)  # Turns the turtle to face south
```

#### Go to a specific x,y coordinate

- **`goto(x,y)`**: Go to the specific location on the screen.

**Example:**

<img src="Images/turtle_x.png" alt="Drawing an x with turtle" style="zoom:25%;" />

```python
import turtle
turtle.up()
turtle.goto(-50,50)
turtle.down()
turtle.goto(50,-50)
turtle.up()
turtle.goto(50,50)
turtle.down()
turtle.goto(-50,-50)
turtle.mainloop()
```

- **`teleport(x,y)`**: Go quickly to the specific location on the screen, _without drawing_.

```python
import turtle
turtle.teleport(x,y)
```

### Turtle Speed

You can control how fast the turtle moves using the `speed()` function. This step is optional, but it helps you see how the turtle is drawing.

```python
turtle.speed(1)
```

- “fastest”: 0
- “fast”: 10
- “normal”: 6
- “slow”: 3
- “slowest”: 1

---

### Customizing the Turtle

You can make your turtle more fun by changing its shape and color.

#### Change Turtle Shape

The turtle’s appearance can be changed using the `shape()` function. Available shapes include `"turtle"`, `"arrow"`, `"circle"`, and more.

```python
turtle.shape("turtle")  # Sets the turtle to look like a turtle
```

#### Adding new turtle shapes

You can use a custom image for the turtle, instead of the available shapes.

You can do this using the `screen.addshape()` function. For example, if `treasure.gif` is an image located in the same directory as your python file, then:

```python
screen = turtle.Screen() # You only need to create the screen once
screen.addshape("treasure.gif")  # adds treasure.gif to the available shapes
turtle.shape("treasure.gif") # sets the turtle to look like the image stored in treasure.gif
```

> Note: the size of the `.gif` matters, it cannot be resized in python. Recommended: less than `64x64` pixels.

#### Change Turtle Color

```python
turtle.color("orange", "green")
```

#### Change Turtle Size

```python
turtle.resizemode('user')
turtle.shapesize(2,2,3)
```


### Colours and Backgrounds

#### Change Pen Color and Width

The turtle draws lines as it moves, and you can customize the line’s color and thickness.

```python
turtle.pencolor("red")    # Sets the pen color to red
turtle.pensize(3)         # Sets the pen width to 3 pixels
```

#### Fill Shapes with Color

To fill a shape with color, use `begin_fill()` before drawing the shape and `end_fill()` after.

```python
turtle.fillcolor("yellow")  # Sets the fill color to yellow
turtle.begin_fill()
for _ in range(4):
    turtle.forward(100)
    turtle.right(90)
turtle.end_fill()
```

This draws a yellow-filled square.

#### Screen colours

Turtle graphics are drawn on a screen (or window), which is set up using the `Screen()` function:

```python
screen = turtle.Screen()
```

This command creates the canvas where your turtle will draw. You can customize the background color of the screen with:

```python
screen.bgcolor("lightblue")  # Sets background color to light blue
screen.bgpic("some-image.png") # Sets the background to be an image
```

> NOTE: any images you use in `screen.bgpic()` MUST be stored in the same directory as the python code you are running.

---

<img src="Images/turtle_star_with_colour.png" style="zoom:25%;" />

```python
import turtle
turtle.fillcolor("blue")
turtle.begin_fill()
radius = 100
for _ in range(50):
    turtle.forward(radius)
    turtle.right(170)
    radius = radius + 10
turtle.end_fill()
turtle.mainloop()
```

### Working with User Input

To get information from the user:

```python
number_input = turtle.numinput("Title", "Prompt") # Forces the input to be a number
text_input = turtle.text_input("Title", "Prompt") # Will accept any characters
```

Note that the `turtle.numinput()` and `turtle.textinput()` functions are similar to the Python `input()` function, in that they both return a `str` value .
See the course notes on [input with `input()`](https://john-abbott-college.github.io/SN1-Notes/#/Notes/18_functions_print_input?id=input-with-input) for more information.

To print output onto the turtle window:

```python
font = ('Arial', 20, 'bold')
text_turtle.write("Message", font=font)
```

### Using Multiple Turtles

By default, there is a single turtle we can use to draw shapes, write text, etc.

This is troublesome if we want to write messages and draw shapes in different spots without making the same turtle repeat steps.

We can create multiple turtles by using variables, and the `turtle.Turtle()` function:

```python
text_turtle = turtle.Turtle()
drawings_turtle = turtle.Turtle()

text_turtle.teleport(100, 100) # this motion does not affect drawings_turtle
drawings_turtle.teleport(-100, -100) # this motion does not affect text_turtle
```

Using `turtle.Turtle()` creates new turtles that are copies of the default `turtle`, i.e. in the default location `(0, 0)` and with all the default settings for pensize, color, shape, etc.

#### Cloning existing turtles

Another way to create new turtles is to `clone` an existing turtle -- this makes a new turtle that has the same position and properties as an existing turtle. For example:

```python
some_turtle.teleport(100, 100)
cloned_turtle = new_turtle.clone()
cloned_turtle.pos() # returns (100, 100)
```

### Keeping the Window Open

By default, a turtle session will end without keeping the window open, which makes appreciating your beautiful Turtle drawings difficult.

To pause the turtle session at the end of the turtle program, use **one** of the following three commands:

```python
turtle.mainloop() # Last statement in Turtle program, keeps the window open until closed by user.
turtle.done() # exact same behavior as turtle.mainloop()
turtle.exitonclick() # exact same behavior as above, except lets you exit by clicking on the screen directly.
```

After any of these three commands is run, the turtle program pauses with the window open. **NOTE:** no code after these lines will run, make sure they are the last line in your turtle program.


