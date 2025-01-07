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



 

2. Create a function called `draw_concentric_polygones()` which takes as input parameter the `num_sides`, the count of polygons to draw`num_polygones` . It draws polygons with `num_sides` that start with a side length of `0`, then grows by 1 each iteration (side: 1, 2, 3, ..., `num_polygones`-1). As shown below:

   <img src="Practice_questions/images_exos/spiral.png" height=400/>

   3. Create a function called `draw_star()` which takes the `vertexes` which draws a regular star. Use the following angle: `180 - 180/vertexes` to turn the pen. Note the function will only draw complete stars if the `vertexes` are odd:

      ```python
      
      draw_star(5)
      draw_star(7)
      draw_star(9)
      ```

      

      <div class="in-line"> 
          <img src="Practice_questions/images_exos/star_5.png" alt="Star 5" style="width:40">  
          <img src="Practice_questions/images_exos/star_7.png" alt="Star 7" style="width:40">  
          <img src="Practice_questions/images_exos/star_9.png" alt="Star 9" style="width:40"> 
      </div>
   
   4. Start four individual turtles in the four corners of the grid:
   
      - (-400,-400)
      - (400,-400)
      -  (400,400)
      - (-400,400)
   
      Loop **80 times**
   
      For every loop,
   
      - t1 chases t2 for 10 steps (or less if they are closer than 20 steps away),
      - t2 chases t3 for 10 steps (or less if they are closer than 20 steps away),
      - t3 chases t4 for 10 steps (or less if they are closer than 20 steps away), and
      - t4 chases t1 for 10 steps (or less if they are closer than 20 steps away)
   
      **Turtle commands:**
   
      color('color name')
      penup()
      pendown()
      forward(steps)
      towards(turtle) - calculates angle between your turtle and another turtle
      setheading(angle) - sets the turtle's heading
      pos()

5. Create a function `spiral()` that moves the pen in an outward going spiral that circles round at least 10 times.

### Answers:

 **Level 1**

1. ```python
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

1. ```python
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

   



2. ```python
   def draw_concentric_polygones(num_sides:int, num_poly: int):
       side = 0
       for iteration in range(num_poly):
           side += 10
           pen.forward(side)
           pen.right(360/num_sides)
   ```

   

3. ```python
   import turtle
   
   pen = turtle.Turtle()
   
   
   def draw_star(n:int):
       for i in range(n):
           pen.forward(100)
           pen.right(180 - 180/n)
   
   draw_star(5)
   draw_star(7)
   draw_star(9)
   turtle.exitonclick()
   ```

4. ```python
   def main1():
       t1 = turtle.Turtle()
       t2 = turtle.Turtle()
       t3 = turtle.Turtle()
       t4 = turtle.Turtle()
       t1.penup()
       t1.goto(-400,-400)
       t2.penup()
       t2.goto(-400,400)
       t3.penup()
       t3.goto(400,400)
       t4.penup()
       t4.goto(400,-400)
   
       t1.pendown()
       t2.pendown()
       t3.pendown()
       t4.pendown()
   
       for i in range(80):
           # t1 chasing t2
           x2,y2 = t2.pos()
           x1,y1 = t1.pos()
           x=t1.towards(t2)
           t1.setheading(x)
           distance = int(math.sqrt((x2-x1)**2 + (y2-y1)**2))
           if distance < max_step_size:
               t1.forward(distance)
           else:
               t1.forward(max_step_size)
   
           # t2 chasing t3
           x2,y2 = t3.pos()
           x1,y1 = t2.pos()
           x=t2.towards(t3)
           t2.setheading(x)
           distance = int(math.sqrt((x2-x1)**2 + (y2-y1)**2))
           if distance < max_step_size:
               t2.forward(distance)
           else:
               t2.forward(max_step_size)
   
           # t3 chasing t4
           x2,y2 = t4.pos()
           x1,y1 = t3.pos()
           x=t3.towards(t4)
           t3.setheading(x)
           distance = int(math.sqrt((x2-x1)**2 + (y2-y1)**2))
           if distance < max_step_size:
               t3.forward(distance)
           else:
               t3.forward(max_step_size)
   
   
           # t4 chasing t1
           x2,y2 = t1.pos()
           x1,y1 = t4.pos()
           x=t4.towards(t1)
           t4.setheading(x)
           distance = int(math.sqrt((x2-x1)**2 + (y2-y1)**2))
           if distance < max_step_size:
               t4.forward(distance)
           else:
               t4.forward(max_step_size)
   ```

   

4. ```python
   def main():
       ts = [turtle.Turtle(),turtle.Turtle(),turtle.Turtle(),turtle.Turtle()]
       for t in ts:
           t.penup()
   
       ts[0].goto(-400,-400)
       ts[1].goto(-400,400)
       ts[2].goto(400,400)
       ts[3].goto(400,-400)
   
       for t in ts:
           t.pendown()
   
       for _ in range(80):
           for i in range(4):
               n = (i+1)%4
               x2,y2 = ts[n].pos()
               x1,y1 = ts[i].pos()
               x=ts[i].towards(ts[n])
               ts[i].setheading(x)
               distance = int(math.sqrt((x2-x1)**2 + (y2-y1)**2))
               if distance < max_step_size:
                   ts[i].forward(distance)
               else:
                   ts[i].forward(max_step_size)
   ```

   

5. ```python
   def spiral():
       """Create an outward going spiral that circles round at least 10 times"""
       t = turtle.Turtle()
       delta_angle = 10
       num_circles = 10
       for i in range(int(360/delta_angle)*num_circles):
           t.forward(int(i/10))
           t.right(delta_angle)
   ```

   
