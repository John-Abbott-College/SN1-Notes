## Functions

**Level 1 Exercise** 

We recommend you do these exercises with pen and paper:

1. Write a simple function called `calculate_sum()` which takes two numbers as input and returns the sum.

   - Call the function `calculate_sum()` with values 3, 4 and print the returned value.

   

2. Consider the following function which implements this formula:
   $$
   n_1^2 + n_2^2
   $$
   

   ```python
   def sum_squares(num1, num2):
       result =   num1**2 + num2**2
       return result
   ```

   What will be the output of this line of code:

   ```python
   print(sum_squares(3,4) + sum_squares(1,2))
   ```

   



3. Write a function which helps apply this formula:
   $$
   f(x) = (x-4)(x+7)
   $$
   

   Then, use it to evaluate $f(x)$ for the values of $x$:

   - $x = 4$
   - $x=-7$
   - $x=2$
   - $x=-6$

4. Write a function which helps apply this formula:
   $$
   f(x,y) = 3(x+y)
   $$
   Then, use it to evaluate $f(x,y)$ for the following values:

   - $x = 3$ , $y=4$
   - $x = 5$ , $y=6$

   -  $x = 2$ , $y=8$



**Level 2 exercises**

1. Consider the following function:

   ```python
   def calculate_average(num1, num2):
   	result = (num1+num2)/2
   ```

   a. What will be the output of the following line:

   ```python
   average = calculate_average(3,4)
   ```

   b. Explain the reason for this outcome and propose an improvement.

2. Write a simple function called `calculate_area_circle()` which takes the `radius` as an input and returns the area:
   $$
   A_{circle} = \pi r^2
   $$
   

   - Calculate the area of a circle with `radius=2` by using the function defined above.
   - Calculate the area of a circle with `radius=9` by using the function defined above.
   - Calculate the area of a ring which has an inner circle of radius 4 and an outer circle of radius 6.

3. Write a simple function called `calculate_area_rectangle()` which takes the `width` and `height` of a rectangle and returns the area:
   $$
   A_{rect} = w * h
   $$
   

4. Write a simple function called `calculate_area_square()` which takes the `legth_side` and returns the area:
   $$
   A_{square}= s^2
   $$
   

5. Using the `calculate_area_cricle()`, `calculate_area_rectangle()` and `calculate_area_square()` functions, calculate the area of the following shape. You can assume that the red squares are perfect, that the green central ring is composed of two perfect inner and outer circles and that the blue borders are all perfect rectangles. :

   <img src="Practice_questions/images_exos/composite_area.png" height=250/>

6. Consider the following functions:

   ```python
   def function1():
     print("Hi")
     function2()
     function3()
   
   def function2():
     print("How are you?")
   
   def function3():
     print("Bye")
   ```

   a. What will be the output when calling `function2()`:

   ```python
   function2()
   ```

   b. What will be the output when calling `function3()`

   ```python
   function3()
   ```

   c. What will be the output when calling `function1()`:

   ```python
   function1() 
   ```

   

7. Consider the following functions

   ```python
   def function1():
     print("Hi")
     function2()
     function3()
   
   def function2():
     print("How are you?")
   
   def function3():
     print("Bye")
   ```

   What will be the output when running those lines of code: 

   ```python
   function1()  
   function2()
   function3()
   ```

   

   

   **Level 3 Exercises**

   

1. Write a function `calculate_force()` which implements Newton's second law taking the `mass` in Kg and `acceleration` in $m/s^2$ of an object and returns the force in Newton.  Use type hinting  in the function header.  Reminder: 

$$
F = m * a
$$



**Example of function definition:**

```python
def calculate_force(...):
	...
```

**Example of function call**

```python
# Main script
mass1 = 1000  #In Kg
mass2 = 200   #In Kg
acceleration = 10
force1 = calculate_force(mass1, acceleration)
force2 = calculate_force(mass2, acceleration)
print(f"The force applied on object 1 is: {force1} N")
print(f"The force applied on object 2 is: {force1} N")
```

Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/force.php) tool:

- mass = 1000 acceleration = 25
- mass = 200  acceleration = 10

2. Write a function `calculate_work()` which takes the `force` acting on an object in Newton and the `displacement` in meter caused by the force. The function must return the work in Joules.  Use type hinting  in the function header. 
   $$
   W = F\cdot d
   $$
   

   Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/work.php) tool:

   - force = 10 displacement= 10
   - force = 15 displacement= 30

   

   **Function definition:**

   ```python
   def calculate_work(...):
   	...
   ```

   

   **Example of function call**:

   ```python
   # Main script:
   force = 100
   displacement = 50
   work = calculate_work(force, displacement)
   print(f"The work is: {work} Joules")
   ```

   

3. Write a function `get_parallel_force` which takes the `total_force` in Newton  and the angle `theta` in ° between a force vector and the direction of displacement caused by the force. This function  returns the parallel component of the force along the axis of displacement: `F*cos(angle)`.  Use type hinting  in the function header:
   $$
   F_{parallel} = F_{total} \cdot cos(\theta)
   $$
   

   - Test your function with the following edge cases:
     - total_force = 100 angle = 0, parallel_force = 100
     - total_force = 100 angle = 90, parallel_force = 0
     - total_force = 100 angle =45, parallel_force = 70.71

   **Function definition:**

   ```python
   def get_parallel_force(...):
   	...
   
   ```

   **Function call**

   ```python
   # Main script:
   force = 100
   angle = 45
   force_x = get_parallel_force(force, angle)
   print(f"The force along the x axis is: {force_x} N")
   ```

   

4. Bobby is pulling an object of `mass=30`Kg with an `angle=30`° and an `acceleration=3` m/s2. 

   a. What would be the required energy for the following displacements. Perform your calculations using the functions defined earlier:

   - 10 m
   - 15 m
   - 30 m

   b. Repeat the exercise while maintaining a constant displacement of 15 m and varying the angle. Perform your calculations using the functions defined earlier:

   - 45°
   - -135°
   - 90°

    c. Can you establish if the Work versus the displacement is a linear relationship (i.e.: There exists a relationship Work = m*displacement+b, where m and b are constants).  You must create and a function called`interpolate()`

   The function `interpolate()` takes the coordinates of two points `x_0` ,`y_0` , `x_1`, `y_1` as arguments and calculates the slope  `m` and the intercept `b` of the straight line formed by the two points. This function returns both `m` and `s`. Use type hinting  in the function header.  [Reminder](https://www.alloprof.qc.ca/en/students/vl/mathematics/forms-of-a-straight-line-equation-m1320):  `y = mx + b` 

   **Example of function call:**

   ```
   m, s = interpolate(0.00, -1.052, 1.00, 6.082)
   
   print("The equation is: {m=}x + {b}")
   ```

   **Output example:**

   ```text
   The equation is: y=7.134x -1.052
   ```

   

## **Answers:**

1. 

```python
def calculate_sum(num1, num2):
    return num1 + num2
```

```python
sum_value = calculate_sum(3,4)
print(sum_value)
```

 

2. 25 + 5 = 30

3. 

   ```python
   def f_quadratic(x):
   	term1 = (x-4)
       term2 = (x+7)
       return term1*term2
   ```

   ```python
   print(f_quadratic(4))  #prints 0
   print(f_quadratic(-7)) #prints 0
   print(f_quadratic(2))  #prints -18
   print(f_quadratic(-6)) #prints -10
   ```

4. ```python
   def f_plane(x,y):
   	return 3*(x+y)
   ```

   ```python
   print(f_plane(3,4))  #21 
   print(f_plane(5,6))  #33
   print(f_plane(2,8))  #30
   ```

   

**Level 2**

1. a. `None`. 

   b. The function doesn't return the average. This is why it evaluates as `None` instead of the expected result. To fix this we should add a return statement:

   ```python
   def calculate_average(num1, num2):
       result = (num1 + num2)/2
       return result
   ```

   2. 

```python
import math
def calculate_area_circle(radius):
    area = math.pi * (radius**2)
    return area
```

```python
area1 = calculate_area_circle(2)
area2 = calculate_area_circle(9) 
area_ring = calculate_area_circle(6) -calculate_area_circle(4)
```



3. 

```python
def calculate_area_rectangle(height, width):
    area = height * width
    return area
```



4. 

```python
def calculate_area_square(side_length):
    area = side_length**2
    return area
```

5. 

```python
area_ring = calculate_area_circle(25) - calculate_area_circle(15)
area_borders = (2*calculate_area_rectangle(45,5)
                + 2*calculate_area_rectangle(35,5))
area_squares = 4*calculate_area_square(5)

total_area = area_ring + area_borders + area_squares
print(f"The total area is {total_area}")
```

6. 

a. 

```
How are you?
```

b.

```
Bye
```

c.

```text
Hi
How are you?
Bye
```



7. 

```
Hi
How are you?
Bye
How are you?
Bye
```



**Level 3**

1. ```python
   def calculate_force(mass:float, acceleration:float) -> float:
       return mass*acceleration
   mass1 = 1000  #In Kg
   mass2 = 200   #In Kg
   acceleration = 10
   force1 = calculate_force(mass1, acceleration)
   force2 = calculate_force(mass2, acceleration)
   print(f"The force applied on object 1 is: {force1:.2f} N")
   print(f"The force applied on object 2 is: {force1:.2f} N")
   ```

2. ```python
   def calculate_work(force:float, displacement:float)->float:
       return force * displacement
   
   force = 100
   displacement = 50
   work = calculate_work(force, displacement)
   print(f"The work is: {work} Joules")
   ```

3. ```python
   import math
   def get_parallel_force(resultant_force:float, angle:float)->float:
       angle_rad = math.radians(angle)
       parellel_force = resultant_force * math.cos(angle_rad)
       return parellel_force
   force = 100
   angle = 45
   force_x = get_parallel_force(force, angle)
   print(f"The force along the x axis is: {force_x:.2f} N")
   ```

   

a) 

```python
mass = 30
acceleration = 3
total_force = calculate_force(mass, acceleration)

disp1 = 10
disp2 = 15
disp3 = 30

angle = 30
working_force = get_parallel_force(force, angle)
work1 = calculate_work(working_force, disp1)
work2 = calculate_work(working_force, disp2)
work3 = calculate_work(working_force, disp3)

print(f"required energy for {disp1}m : {work1}J")
print(f"required energy for {disp2}m : {work2}J")
print(f"required energy for {disp3}m : {work3}J")

```

b)

```python
disp = 15
angle1 = 45
angle2 = -135
angle3 = 90

work1 = calculate_work(get_parallel_force(force,angle1), disp)
work2 = calculate_work(get_parallel_force(force,angle2), disp)
work3 = calculate_work(get_parallel_force(force,angle3), disp)

print(f"required energy when angle is {angle1}° : {work1}J")
print(f"required energy when angle is {angle2}° : {work2}J")
print(f"required energy when angle is {angle3}° : {work3}J")
```

c)

**Function**

```python
def interpolate(x_0:float,y_0:float,x_1:float,y_1:float)->float:
    delta_y = y_1 - y_0
    delta_x = x_1 - x_0
    slope = delta_y/delta_x
    intercept = y_1 - slope*x_1
	
    return slope, intercept
    

interpolate(0.00,-1.052,1.00,6.082)
```

**Main script:**

```python
# Line 1
slope1,intercept1 = interpolate(x_0 = disp1, y_0 = work1, x_1 = disp2, y_1 = work2)

print(f"The equation is: y={slope1:.3f}x {intercept1:+.3f}")
# Line 2
slope2,intercept2 = interpolate(x_0 = disp2, y_0 = work2, x_1 = disp3, y_1 = work3)
print(f"The equation is: y={slope2:.3f}x {intercept2:+.3f}")
```

**Output:** 

```text
The equation is: y=86.603x +0.000
The equation is: y=86.603x +0.000
```

**Observation:**

Based on the comparison of the equation of the line1 drawn between points  (disp1, work1) and (disp2, work2) with the equation of the line 2 drawn between points (disp2, work2) and (disp3, work3). The relationship seems linear because the two lines are the same. A better test would be to draw n - points and observe the tendency.  This is confirmed by solving the analytical equation. 

