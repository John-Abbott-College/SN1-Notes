## Draw a simple house

```python
import turtle

# Set up the screen
screen = turtle.Screen()

# Create a turtle object
t = turtle.Turtle()

# Set the speed of the turtle (optional)
t.speed(2)

# Draw a square
for _ in range(4):
    t.forward(100)   # Move forward by 100 units
    t.right(90)      # Turn right by 90 degrees

t.right(-60)

for _ in range(2):
    t.forward(100)   # Move forward by 100 units
    t.right(120)
# Close the turtle graphics window on click
screen.exitonclick()

```

### Draw a dount:

```python
import turtle

# Set up the screen
screen = turtle.Screen()

# Create a turtle object
t = turtle.Turtle()

# Set the speed of the turtle (optional)
t.speed(2)

# Draw the outer circle (the body of the donut)
t.pencolor("brown")
t.fillcolor("pink")   # Fill color for the donut
t.begin_fill()
t.circle(100)         # Outer circle with radius 100
t.end_fill()

# Move to the position to draw the inner circle (the hole of the donut)
t.penup()
t.goto(0, +60)        # Move to the center bottom of the outer circle
t.pendown()

# Draw the inner circle (the hole of the donut)
t.fillcolor("white")  # Fill color for the hole
t.begin_fill()
t.circle(40)          # Inner circle with radius 40
t.end_fill()

# Close the turtle graphics window on click
screen.exitonclick()
```

### **Run this and enjoy the output**

```python
import turtle

# Set up the screen
screen = turtle.Screen()

# Create a turtle object
t = turtle.Turtle()

# Set the speed of the turtle (optional)
t.speed(2)

# Draw the body of the house (a square)
t.pencolor("black")
t.fillcolor("lightblue")  # Fill color for the house
t.begin_fill()
for _ in range(4):
    t.forward(150)   # Move forward 150 units
    t.right(90)       # Turn left 90 degrees
t.end_fill()

# Move the turtle to the top-left corner to draw the roof
t.left(60)
t.forward(150)
t.right(90)

# Draw the roof (a triangle)
t.fillcolor("brown")  # Fill color for the roof
t.begin_fill()
t.right(30)
for _ in range(2):
    t.forward(150)
    t.right(120)
t.end_fill()


# Move to draw the door (a rectangle)
t.penup()
t.right(150)            # Face down towards the house base
t.forward(150)
t.left(90)
t.forward(95)        # Move to the bottom-left corner of the door
t.pendown()
#
# Draw the door
t.fillcolor("darkblue")  # Fill color for the door
t.begin_fill()
t.left(90)
t.forward(60)            # Door height
t.left(90)
t.forward(40)            # Door width
t.left(90)
t.forward(60)
t.left(90)
t.forward(40)
t.end_fill()
# Close the turtle graphics window on click
screen.exitonclick()


```

