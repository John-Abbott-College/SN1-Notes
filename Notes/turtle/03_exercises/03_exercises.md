# Drawing with turtle and loops

## Level 1

1. **Red and Blue squares**

Write a script which draws red and blue squares with growing sides as such:

<img src="Practice_questions/images_exos/squares_red_blue.png" height=300/>

<details>
  <summary>👀 Hint</summary>
  <p>Many solutions are possible!</p>
</details>
<details>
  <summary>✅ Solution using an accumulated <code>side</code> and variable <code>current_color</code></summary>
  <pre><code class="language-python">
    import turtle 
    pen = turtle.Turtle()
    num_squares = 5
    side = 10
    current_color = "red"
    # sets the color
    pen.color(current_color)
    for i in range(num_squares):
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        # moving the pen one more time to the left
        pen.forward(side)
        # Incrementing the side for the next turn
        side += 10
        #switching colors before next turn
        if current_color == "red":
            current_color = "blue"
        else:
                current_color = "red"
        pen.color(current_color)
  </code></pre>
</details>
<details>
  <summary>✅ Solution using <code>i</code></summary>
  <pre><code class="language-python">
    import turtle 
    pen = turtle.Turtle()
    num_squares = 5
    for i in range(num_squares):
        if i%2 == 0:
            pen.color('blue')
        else:
                pen.color('red')
        side = (i+1)*10
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        pen.forward(side)
        pen.left(90)
        
        # moving the pen one more time to the left
        pen.forward(side)
  </code></pre>
</details>
<details>
  <summary>✅ Solution using a nested loop</summary>
  <pre><code class="language-python">
    import turtle
    pen = turtle.Turtle()
    num_squares = 5
    side = 10
    for i in range(num_squares):
      if i%2 == 0:
            pen.color('blue')
        else:
                pen.color('red')
        for _ in range(4):
                pen.forward(side)
                pen.left(90)
        
        # moving the pen one more time to the left
        pen.forward(side)
        side += 10
  </code></pre>
</details>
<details>
  <summary>✅ Solution using a function</summary>
  <pre><code class="language-python">
    import turtle
    pen = turtle.Turtle()

    def draw_square(side):
      for _ in range(4):
        pen.forward(side)
        pen.left(90)

    num_squares = 5
    side = 10
    for i in range(num_squares):
      if i%2 == 0:
            pen.color('blue')
        else:
                pen.color('red')
        draw_square(side)
        # moving the pen one more time to the left
        pen.forward(side)
        side += 10
  </code></pre>
</details>

2. Change the `draw_square()` function below so that it uses a `for-loop` to draw a square instead of repeating the lines multiple times. 

Then, use the `draw_square()` function to draw:
   - a square with side: 200
   - a square with side: 300

```python
import turtle
pen = turtle.Turtle()

def draw_square(side:float):
    # CHANGE THE CODE BELOW
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
```

<details>
  <summary>👀 Hint</summary>
  <p>Your for loop should repeat 4 times, once for each side of the square.</p>
</details>
<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    import turtle
    pen = turtle.Turtle()
    def draw_square(side:float):
        for i in range(4):
            pen.forward(side)
            pen.right(90)
    draw_square(200)
    draw_square(300)
  </code></pre>
</details>

2. Create a function called `draw_triangle()` which take as input parameter the `side` and uses a `for-loop` to draw an equilateral triangle with `turtle`. Then, use the `draw_triangle()` function to make a triangle with sides of length `100`.


<details>
  <summary>👀 Hint</summary>
  <p>Your for loop should repeat 3 times, once for each side of the triangle. How large are the angles of an equal-side triangle?</p>
</details>
<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    import turtle
    pen = turtle.Turtle()
    def draw_triangle(side:float):
        for i in range(3):
            pen.forward(side)
            pen.right(120)
    draw_triangle(100)
  </code></pre>
</details>


3. Create a function called `draw_pentagon()` which take as input parameter the `side` which uses a `for-loop` to draw a pentagon with `turtle`. Then, use the `draw_pentagon()` funciton to draw a pentagon with sides of length `150`.

  <details>
    <summary>👀 Hint</summary>
    <p>Your for loop should repeat 5 times, once for each side of the pentagon. How large are the angles of an equal-sided pentagon?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      import turtle 
      pen = turtle.Turtle()
      def draw_pentagon(side:float):
          for i in range(5):
              pen.forward(side)
              pen.right(72)
      draw_pentagon(150)
    </code></pre>
  </details>




## Level 2

1. Create a function called `draw_polygon()` which takes as input parameter the length `side` and the number of sides`num_sides` to draw any regular polygon. You should be able to use your function like so:

- `draw_polygon(side=100, num_sides=5)`: Draw a pentagon with sides length 100
- `draw_polygon(side=500, num_sides=3)`: Draw a triangle with sides length 500
- `draw_polygon(side=150, num_sides=10)`: Draw a decagon (10 sides) with sides length 150
- `draw_polygon(side=10, num_sides=50)`: Draw a circle (approximately)

  <details>
    <summary>👀 Hint</summary>
    <p>You must find a relationship between the external angles of the polygon and the number of sides.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      import turtle
      pen = turtle.Turtle()
      def draw_polygon(side:float, num_sides:int):
          for i in range(num_side):
              pen.forward(length_side)
              pen.right(360/num_side)
      draw_polygon(100,5)
      draw_polygon(100,6)
      draw_polygon(100,10)
      draw_polygon(10,50) # this is how computers actually approximate curves and circles
    </code></pre>
  </details>

2. Create a function called `draw_concentric_polygons()` which takes as input parameter the `num_sides`, the count of polygons to draw`num_polygons` . It draws polygons with `num_sides` that start with a side length of `0`, then grows by 1 each iteration (side: 1, 2, 3, ..., `num_polygons`-1). As shown below:

  <details>
    <summary>👀 Hint</summary>
    <p>You need to increase the size of the polygon each time the for loop repeats.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def draw_concentric_polygons(num_sides:int, num_poly: int):
          side = 0
          for iteration in range(num_poly):
              side += 10
              pen.forward(side)
              pen.right(360/num_sides)
    </code></pre>
  </details>

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

    <details>
      <summary>👀 Hint</summary>
      <p>You need to increase the size of the polygon each time the for loop repeats.</p>
    </details>
    <details>
      <summary>✅ Solution</summary>
      <pre><code class="language-python">
        def draw_star(n:int):
            for i in range(n):
                pen.forward(100)
                pen.right(180 - 180/n)
      </code></pre>
    </details>


5. Create a function `spiral()` that moves the pen in an outward going spiral that circles round at least 10 times.

  <img src="Practice_questions/images_exos/spiral.png" height=300/>

  <details>
    <summary>👀 Hint</summary>
    <p>No hint available at this time.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def spiral():
          """Create an outward going spiral that circles round at least 10 times"""
          t = turtle.Turtle()
          delta_angle = 10
          num_circles = 10
          for i in range(int(360/delta_angle)*num_circles):
              t.forward(int(i/10))
              t.right(delta_angle)
    </code></pre>
  </details>

