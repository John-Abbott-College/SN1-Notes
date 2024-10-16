# Drawing with turtle and loops

**Level 1**

1. Use a `for-loop` to draw a square with turtle instead of repeating the lines multiple times. The draw:
   - a square with side: 100
   - a square with side: 200

​	

```python
import turtle 
pen = turtle.Turtle()
def draw_square(side:float):
	# side 1
    pen.forward(side)
    pen.right(90)
    # side 2
    pen.forward(side)
    pen.right(90)
    # side 3
    pen.forward(side)
    pen.right(90)
    # side 4 
    pen.forward(side)
    pen.right(90)
draw_square(100)
```



2. Create a function called `draw_triangle()` which take as input parameter the `side` and uses a `for-loop` to draw an equilateral triangle with `turtle`:



3. Create a function called `draw_pentagon()` which take as input parameter the `side` which uses a `for-loop` to draw a pentagon with `turtle`



**Level 2**

1. Create a function called `draw_polygone()` which takes as input parameter the length `side` and the number of sides`num_sides` to draw any regular polygon. 

   > Hint: You must find a relationship between the external angles of the polygon and the number of sides.

- Draw a pentagon 
- Draw a hexagon
- Draw a decagon (side 10)
- Draw an approximate circle



 

2. Create a function called `draw_concentric_polygones()` which takes as input parameter the `num_sides`, the count of polygons to draw`num_polygones` . It draws polygons with `num_sides` that start with a side length of `0`, then grows by 1 each iteration (side 1, 2, 3, ..., `num_polygones`-1). As shown below:

   <img src="spiral.png"/>

   3. Create a function called `draw_star()` which takes the `vertexes` which draws a regular star. Use the following angle: `180 - 180/vertexes` to turn the pen. Note the function will only draw complete stars if the `vertexes` are odd:

      ```python
      
      draw_star(5)
      draw_star(7)
      draw_star(9)
      ```

      

      <div class="in-line"> 
          <img src="star_5.png" alt="Star 5" style="width:50">  
          <img src="star_7.png" alt="Star 7" style="width:50">  
          <img src="star_9.png" alt="Star 9" style="width:50"> 
      </div>

### Answers:

 **Level 1**

1. 

```python
import turtle

pen = turtle.Turtle()

def draw_square(side:float):
    for i in range(4):
        pen.forward(side)
        pen.right(90)

draw_square(100)
draw_square(200)
```



2. ```python
   import turtle
   
   pen = turtle.Turtle()
   
   def draw_triangle(side:float):
       for i in range(3):
           pen.forward(side)
           pen.right(120)
   
   draw_triangle(100)
   ```

   

3. ```python
   import turtle 
   pen = turtle.Turtle()
   
   def draw_pentagon(side:float):
       for i in range(5):
           pen.forward(side)
           pen.right(72)
   
   draw_pentagon(100)
   ```

   

**Level 2**

1. 

```python
import turtle

pen = turtle.Turtle()
def draw_polygone(length_side:float, num_side:int):
    for i in range(num_side):
        pen.forward(length_side)
        pen.right(360/num_side)
        
draw_polygone(100,5)
draw_polygone(100,6)
draw_polygone(100,10)
draw_polygone(10,50) # this is how computers actually approximate curves and circles
```



2. 