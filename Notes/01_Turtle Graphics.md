### Python Turtle Graphics: How to Draw a Box

The `turtle` module in Python is an excellent tool for introducing programming through graphics. It allows you to control a "turtle" that moves around the screen, drawing as it moves. With simple commands, you can create shapes, patterns, and even games!

In this tutorial, you'll learn the basics of using `turtle` in Python, how to control the turtle’s movement, and how to create shapes and customize your drawings.

------

### Step 1: Import the Turtle Module

First, ensure that you have Python installed. The `turtle` module comes with Python, so you don’t need to install anything extra.

Start by importing the `turtle` module. This module provides all the functions you need to draw shapes on the screen.

```python
import turtle
```

This line imports the turtle module so you can use its functions in your code.

------

### Step 2: Set Up the Screen

Turtle graphics are drawn on a screen (or window), which is set up using the `Screen()` function:

```python
screen = turtle.Screen()
```

This command creates the canvas where your turtle will draw. You can customize the background color of the screen with:

```python
screen.bgcolor("lightblue")  # Sets background color to light blue
```

### Step 3: Create a Turtle Object

The turtle that moves around on the screen is created by calling `turtle.Turtle()`. This object is the "pen" or "cursor" that you control to draw.

```python
t = turtle.Turtle()
```

Here, we create a turtle object `t` that we will use to draw on the screen. You can name your turtle anything you like.

------

### Step 4: Set Turtle Speed (Optional)

You can control how fast the turtle moves using the `speed()` function. This step is optional, but it helps you see how the turtle is drawing.

```python
t.speed(1)
```

Here, `1` is the slowest speed, making it easier to see each step of the drawing. You can set it to higher values (`10` is the fastest) if you want the turtle to move quickly.

------

### Step 5: Moving the Turtle

You can move the turtle forward and backward, and turn it to the left or right. Here are the basic movement commands:

#### Move Forward and Backward:

- **`forward(distance)`**: Moves the turtle forward by the specified distance.

- **`backward(distance)`**: Moves the turtle backward by the specified distance.

  

**Example:**

```python
t.forward(100)  # Moves turtle forward by 100 units
t.backward(50)  # Moves turtle backward by 50 units
```

#### Turn the Turtle:

- **`right(angle)`**: Turns the turtle clockwise by the specified angle.
- **`left(angle)`**: Turns the turtle counterclockwise by the specified angle.

**Example:**

```python
t.right(90)  # Turns the turtle 90 degrees to the right
t.left(45)   # Turns the turtle 45 degrees to the left
```

These commands let you control how the turtle moves around the screen.

------

### Step 6: Drawing Shapes with Loops

To draw shapes, you can combine movement and turning commands in loops. For example, to draw a square:

```python
for _ in range(4):
    t.forward(100)  # Move forward 100 units
    t.right(90)     # Turn right by 90 degrees
```

This loop repeats 4 times to draw four sides of a square, turning at each corner.

#### Example: Drawing a Triangle

```python
for _ in range(3):
    t.forward(100)
    t.right(120)  # Turn right by 120 degrees (triangle angle)
```

------

### Step 7: Customizing the Turtle

You can make your turtle more fun by changing its shape and color.

#### Change Turtle Shape:

The turtle’s appearance can be changed using the `shape()` function. Available shapes include `"turtle"`, `"arrow"`, `"circle"`, and more.

```python
t.shape("turtle")  # Sets the turtle to look like a turtle
```



#### Change Pen Color and Width:

The turtle draws lines as it moves, and you can customize the line’s color and thickness.

```python
t.pencolor("red")    # Sets the pen color to red
t.pensize(3)         # Sets the pen width to 3 pixels
```



#### Fill Shapes with Color:

To fill a shape with color, use `begin_fill()` before drawing the shape and `end_fill()` after.

```python
t.fillcolor("yellow")  # Sets the fill color to yellow
t.begin_fill()
for _ in range(4):
    t.forward(100)
    t.right(90)
t.end_fill()
```

This draws a yellow-filled square.

------

### Step 8: Control Turtle's Speed

You can control how fast the turtle moves with the `speed()` function. The speed range is from 0 to 10, where `1` is slow and `10` is the fastest. You can also use `"fastest"` or `"slowest"`.

```python
t.speed(5)  # Sets turtle speed to medium (5)
```

------

### Step 9: Pen Control

Sometimes, you might want the turtle to move without drawing, or you may want to lift or lower the pen to start or stop drawing:

- **`penup()`**: Lifts the pen, so the turtle moves without drawing.
- **`pendown()`**: Lowers the pen, so the turtle starts drawing again.

**Example:**

```python
t.penup()       # Stops drawing
t.forward(50)   # Moves forward without drawing
t.pendown()     # Starts drawing again
t.forward(50)   # Draws a line
```

------

### Step 10: Clear and Reset the Drawing

You can clear the screen or reset the turtle’s position using the following commands:

- **`clear()`**: Clears the current drawing without moving the turtle.
- **`reset()`**: Clears the drawing and moves the turtle back to the starting position.

```python
t.clear()   # Clears the drawing
t.reset()   # Clears and resets turtle
```

------

### Step 11: Close the Window

When you are done drawing, you want the window to stay open until you close it. Use `exitonclick()` to keep the window open until a user clicks on it.

```python
screen.exitonclick()
```

------



### Example: Full Turtle Program

Here’s a simple example that uses many of the concepts from this tutorial:

```python
import turtle

# Set up the screen
screen = turtle.Screen()
screen.bgcolor("lightblue")

# Create a turtle object
t = turtle.Turtle()
t.shape("turtle")
t.pencolor("red")
t.fillcolor("yellow")
t.speed(5)

# Draw a filled square
t.begin_fill()
for _ in range(4):
    t.forward(100)
    t.right(90)
t.end_fill()

# Close the window on click
screen.exitonclick()
```

------

