## Functions

1. Write a simple function called `calculate_sum()` which takes two numbers as input and returns the sum.
   - Call the function `calculate_sum()` with values 3, 4 and print the returned value.
2. Write a simple function called `calculate_area_circle()` which takes the `radius` as an input:
   - Calculate the area of a circle with `radius=2` by using the function defined above.
   - Calculate the area of a circle with `radius=9` by using the function defined above.
   - Calculate the area of a ring which has an inner circle of radius 4 and an outer circle of radius 6.

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

function1() #<--- The Program starts running from here
```

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
   
   function1()  #<--- The Program starts running from here
   function2()
   function3()
   ```

   

3. What would be the output of the following program:

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

   

4. Write a function `interpolate()` which takes the coordinates of two points `x_0` ,`y_0` , `x_1`, `y_1` as arguments and calculates the slope  `m` and the intercept `b` of the straight line formed by the two points. This functions only prints the equation.  [Reminder](https://www.alloprof.qc.ca/en/students/vl/mathematics/forms-of-a-straight-line-equation-m1320):  `y = mx + b` 

   **Example of function call:**

   ```
   interpolate(0.00, -1.052, 1.00, 6.082)
   ```

   **Output example:**

   ```text
   The equation is : y = 3.567x - 1.052
   ```

   ​	

5. Write a function `calculate_force()` which implements Newton's second law taking the `mass` in Kg and `acceleration` in m/s2 of an object and returns the force in Newton. Reminder: `force = mass * acceleration`. 

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

6. Write a function `calculate_work()` which takes the `force` acting on an object in Newton and the `displacement` in meter caused by the force. The function must return the work in Joules. 

   Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/work.php) tool:

   - force = 10 displacement = 10
   - force = 15 displacement = 30

   **Example of function call:**

   ```python
   def calculate_work(...):
   	...
   
   # Main script:
   force = 100
   displacement = 50
   work = calculate_work(force, displacement)
   print(f"The work is: {work} Joules")
   ```

   

7. Write a function `get_parallel_force` which takes the `total_force` in Newton  and the angle `theta` in ° between a force vector and the direction of displacement caused by the force. This function  returns the parallel component of the force along the axis of displacement: `F*cos(angle)`

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

   

8. Bobby is pulling an object of `mass=30`Kg with an `angle=30`° and an `acceleration=3` m/s2. 

   a. What would be the required energy for the following displacements:

   - 10 m
   - 15 m
   - 30 m

   b. Repeat the exercise while maintaining a constant displacement of 15 m and varying the angle:

   - 45°
   - -135°
   - 90°

    c. Can you establish if the Work versus the displacement is a linear relationship (i.e.: There exists a relationship Work = m*displacement+b, where m and b are constants)

   
