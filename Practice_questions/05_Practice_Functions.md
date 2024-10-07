## Functions

**Level 1 Exercise** 

We recommend you do these exercises with pen and paper:

1. Write a simple function called `calculate_sum()` which takes two numbers as input and returns the sum.

   - Call the function `calculate_sum()` with values 3, 4 and print the returned value.

   

2. What is the output of the following program:

   ```python
   def function1():
     print("Hi")
     function2()
     function3()
   
   def function2():
     print("How are you?")
   
   def function3():
     print("Bye")
   
   function1() #<--- The Program starts running from here
   ```

3. What is the output of the following program:

   ```python
   def function1():
     print("Hi")
     function2()
     function3()
   
   def function2():
     print("How are you?")
   
   def function3():
     print("Bye")
   
   function1()  #<--- The Program starts running from here
   function2()
   function3()
   ```

   

4. What would be the output of the following program:

   ```python
   def function1():
       value = 25
       print(value)
   
   def main():
       value = 50
       function1()
       print(value)
   
   # Note: This is called a Dunder or "double underscore" and provides a starting point for the program execution 
   if __name__ == "__main__":  
       main() #<-- Program starts here!
   ```



**Level 2 exercises**

1. Write a simple function called `calculate_area_circle()` which takes the `radius` as an input:

   - Calculate the area of a circle with `radius=2` by using the function defined above.
   - Calculate the area of a circle with `radius=9` by using the function defined above.
   - Calculate the area of a ring which has an inner circle of radius 4 and an outer circle of radius 6.

2. Write a simple function called `calculate_area_rectangle()` which takes the `width` and `height` of a rectangle and returns the area.

3. Write a simple function called `calculate_area_square()` which takes the `legth_side` and returns the area.

4. Using the `calculate_area_cricle()`, `calculate_area_rectangle()` and `calculate_area_square()` functions, calculate the area of the following shape. You can assume that the red squares are perfect, that the green central ring is composed of two perfect inner and outer circles and that the blue borders are all perfect rectangles. :

   <img src="Practice_questions/composite_area.png" height=250/>

   **Level 3 Exercises**

1. Write a function `interpolate()` which takes the coordinates of two points `x_0` ,`y_0` , `x_1`, `y_1` as arguments and calculates the slope  `m` and the intercept `b` of the straight line formed by the two points. This functions only prints the equation. Use type hinting  in the function header.  [Reminder](https://www.alloprof.qc.ca/en/students/vl/mathematics/forms-of-a-straight-line-equation-m1320):  `y = mx + b` 

**Example of function call:**

```
interpolate(0.00, -1.052, 1.00, 6.082)
```

**Output example:**

```text
The equation is: y=7.134x -1.052
```

​	

2. Write a function `calculate_force()` which implements Newton's second law taking the `mass` in Kg and `acceleration` in m/s2 of an object and returns the force in Newton.  Use type hinting  in the function header.  Reminder: `force = mass * acceleration`. 

   **Example of function call:**

   ```python
   def calculate_force(...):
   	...
   
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

3. Write a function `calculate_work()` which takes the `force` acting on an object in Newton and the `distance` in meter caused by the force. The function must return the work in Joules.  Use type hinting  in the function header. 

   Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/work.php) tool:

   - force = 10 distance= 10
   - force = 15 distance= 30

   **Example of function call:**

   ```python
   def calculate_work(...):
   	...
   
   # Main script:
   force = 100
   distance = 50
   work = calculate_work(force, distance)
   print(f"The work is: {work} Joules")
   ```

   

4. Write a function `get_parallel_force` which takes the `total_force` in Newton  and the angle `theta` in ° between a force vector and the direction of displacement caused by the force. This function  returns the parallel component of the force along the axis of displacement: `F*cos(angle)`.  Use type hinting  in the function header. 

   - Test your function with the following edge cases:
     - total_force = 100 angle = 0, parallel_force = 100
     - total_force = 100 angle = 90, parallel_force = 0
     - total_force = 100 angle =45, parallel_force = 70.71

   **Example of function call:**

   ```python
   def get_parallel_force(...):
   	...
   
   # Main script:
   force = 100
   angle = 45
   force_x = get_parallel_force(force, angle)
   print(f"The force along the x axis is: {force_x} N")
   ```

   

5. Bobby is pulling an object of `mass=30`Kg with an `angle=30`° and an `acceleration=3` m/s2. 

   a. What would be the required energy for the following displacements. Perform your calculations using the functions defined earlier:

   - 10 m
   - 15 m
   - 30 m

   b. Repeat the exercise while maintaining a constant displacement of 15 m and varying the angle. Perform your calculations using the functions defined earlier:

   - 45°
   - -135°
   - 90°

    c. Can you establish if the Work versus the displacement is a linear relationship (i.e.: There exists a relationship Work = m*displacement+b, where m and b are constants). Hint: You must use the `interpolate()` function.

   



## **Answers:**

1. 

```python
def calculate_sum(num1, num2):
    return num1 + num2
sum_value = calculate_sum(3,4)
print(sum_value)
```

2. 

   ```text
   Hi
   How are you?
   Bye
   ```

   

3. 

   ```
   Hi
   How are you?
   Bye
   How are you?
   Bye
   ```

   

4. ```text
   25
   50
   ```

   

**Level 2**

1. 

```python
import math
def calculate_area_circle(radius):
    area = math.pi * (radius**2)
    return area
calculate_area_circle(radius=2)
calculate_area_circle(radius=9)
```



2. 

```python
def calculate_area_rectangle(height, width):
    area = height * width
    return area
```



3. 

```python
def calculate_area_square(side_length):
    area = side_length**2
    return area
```

4. 

```python
area_ring = calculate_area_circle(25) - calculate_area_circle(15)
area_borders = (2*calculate_area_rectangle(45,5)
                + 2*calculate_area_rectangle(35,5))
area_squares = 4*calculate_area_square(5)

total_area = area_ring + area_borders + area_squares
print(f"The total area is {total_area}")
```



**Level 3**

1. ```python
   def interpolate(x_0:float,y_0:float,x_1:float,y_1:float)->float:
       delta_y = y_1 - y_0
       delta_x = x_1 - x_0
       slope = delta_y/delta_x
       intercept = y_1 - slope*x_1
   
       print(f"The equation is: y={slope:.3f}x {intercept:+.3f}")
   
   interpolate(0.00,-1.052,1.00,6.082)
   ```

   

2. ```python
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

3. ```python
   def calculate_work(force:float, displacement:float)->float:
       return force * displacement
   
   force = 100
   distance = 50
   work = calculate_work(force, distance)
   print(f"The work is: {work} Joules")
   ```

4. ```python
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

   

5. 

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

**Code:**

```python
# Line 1
interpolate(x_0 = disp1, y_0 = work1, x_1 = disp2, y_1 = work2)
# Line 2
interpolate(x_0 = disp2, y_0 = work2, x_1 = disp3, y_1 = work3)
```

**Output:** 

```text
The equation is: y=86.603x +0.000
The equation is: y=86.603x +0.000
```

**Observation:**

Based on the comparison of the equation of the line1 drawn between points  (disp1, work1) and (disp2, work2) with the equation of the line 2 drawn between points (disp2, work2) and (disp3, work3). The relationship seems linear because the two lines are the same. A better test would be to draw n - points and observe the tendency.  This is confirmed by solving the analytical equation. 

