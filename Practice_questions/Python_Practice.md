# Python Practice

We highly recommend you work on the exercises below with pen and paper to practice for quizzes and exams. 

## Data Types

1. Specify the data type printed at the end of each program:

   1. ```python
      print(type(10))
      ```

      

   2. ```python
      import math
      PI  = math.pi
      print(type(PI))
      ```

      

   3. ```python
      print(type(3e-5))
      ```

      

   4. ```python
      print(type("Hi"))
      ```

      

   5. ```python
      value = "2"
      value2 = int(value)
      print(type(value2))
      ```

      

   6. ```python
      name = input("What is your name?")
      print(type(name))
      ```

      

   7. ```python
      age = 25
      is_legal_age = (age>=18)
      print(type(is_legal))
      ```

      

   8. ```python
      grade = 24
      total = 25
      ratio = grade / total
      print(type(ratio))
      ```

      

   9. ```python
      num_classrooms = 5
      pcs_per_classroom = 22
      total_pcs = num_classrooms * pcs_per_classroom
      print(type(total_pcs))
      ```

      

   10. ```python
       var1 = 1
       var2 = 2
       var3 = "3"
       
       print(type(var1 + var2 + var3))
       ```

       

   11. ```python
       temperature = 22
       is_freezing = (temperature < 0)
       print(type(is_freezing))
       ```


2. Fix the mistakes in the program below:

   ```python
   num1 = 2
   num2 = "4"
   sum_val = num1 + num2
   ```

3. Fix the calculation error in the program below which is suppose to calculate a simple average of grades:

   ```python
   grade1 = 25
   grade2 = 26
   
   average = int((grade1+grade2)/2)
   ```

4. Fix the errors below:

   ```python
   school = John Abbott 
   street_name =  275 Rue Lakeshore Road
   street_number = 21  
   neighbor_number = street_number + 2
   phone_number  = (514)457-5036
   year_creation = 1971
   school_age = 2024 - year_creation
   address = street_number + street_name
   ```

   

5. Remove unnecessary conversions in the program below:

   ```python
   name = str("Bob")
   age = int(25)
   height = float(36.0)
   print(str(name)
   print(int(age))
   print(float(height))
   ```

   

## Arithmetic operators

1. What is the output of the following program:

   ```python
   x = 6
   y = 2
   print(x ** y)
   print(x // y)
   ```



2. What is the output of the following program:

   ```python
   print((-2 / 4), (2 / 4), (2 // 4), (-2 // 4))
   
   ```

   What is the output of the following program:

   ```python
   print(1/1)
   ```

   

3. What is the output of the following program:

   ```python
   x = 1 / 2 + 3 // 3 + 4 ** 2
   print(x)
   ```

   

4. What is the output of the following program:

   ```python
   x = int(input())
   y = int(input())
   
   x = x % y
   x = x % y
   y = y % x
   
   print(y)
   ```

5. Which of the following statements are true?

   - Addition precedes multiplication.
   - The right argument of the `%` operator cannot be zero.
   - The result of the `/` operator is always an integer value.



## Input/output functions

1. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = input()
   print(x + y)
   ```

2. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = int(input())
   y = int(input())
   
   print(x + y)
   ```



3. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = int(input())
   print(x * y)
   ```

4. Fix the mistakes in the programs below

   ```
   num1 = 2
   num3 = ""
   ```

   





## Assignment operators and variables

1. True or False, the following program contains a `SyntaxError` :

```python
value = 2
value = value + 3
```

2. True or False, the following program contains a `SyntaxError` :

```python
value = 4
value2 = value+=2
```

3. True or False, the following program contains a `SyntaxError`:

```python
value = 10
print(value-=1)
```

4. True or False, the following program contains a `SyntaxError`:

```python
value1 = 34
value2 = 44
value1+=value2
```

5. What is the output of the following program:

```python
num1 = 23
num2 = 45
num3 = "234"
num1 += 1
num2 -= num1
num3 += str(num1)
num3 += str(num2)
num2 = num2 * 2
print(num1, num2, num3)
```

6. What is the output of the following program:

```python
a = 15
b = 15
s = "111"

a = b//a
b = b % 4


a = b / a
print()
```





7. Which of the following variable names are **illegal**?

   - `TRUE`

   - `True`

   - `true`



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

function1()
```

2. What would be the output of the following program:

   ```python
   value = 50
   def function1():
       value = 25
       print(value)
       
   function1()
   print(value)
   ```

   

3. Write a function `interpolate()` which takes the coordinates of two points `x_0` ,`y_0` , `x_1`, `y_1` as arguments and calculates the slope  `m` and the intercept `b` of the straight line formed by the two points. [Reminder](https://www.alloprof.qc.ca/en/students/vl/mathematics/forms-of-a-straight-line-equation-m1320):  `y = mx + b` 

   ​	

4. Write a function `calculate_force()` which implements Newton's second law taking the `mass` in Kg and `acceleration` in m/s2 of an object and returns the force in Newton. Reminder: `force = mass * acceleration`. 

   Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/force.php) tool:

   - mass = 1000 acce = 25
   - mass = 200  acce = 10

5. Write a function `calculate_work()` which takes the `force` acting on an object in Newton and the `displacement` in meter caused by the force. The function must return the work in Joules. 

   Validate your answer by calling your function with the following values and comparing with [this](https://www.calculatorsoup.com/calculators/physics/work.php) tool:

   - force = 10 displa = 10
   - force = 15 displa = 30

6. Write a function `get_parallel_force` which takes the `total_force` in Newton  and the angle `theta` in ° between a force vector and the direction of displacement caused by the force. This function  returns the parallel component of the force along the axis of displacement: `F*cos(angle)`

   - Test your function with the following edge cases:
     - total_force = 100 angle = 0, parallel_force = 100
     - total_force = 100 angle = 90, parallel_force = 0
     - total_force = 100 angle =45, parallel_force = 70.71

7. Bobby is pulling an object of `mass=30`Kg with an `angle=30`° and an `acceleration=3` m/s2. What would be the required energy for the following displacements:

   - 10 m
   - 15 m
   - 30 m

   Repeat the exercise while maintaining a constant displacement of 15 m and varying the angle:

   - 45°
   - -135°
   - 90°

## Conditional statements

1. Using `if`, `elif` and `if/else` statement: calculate the precise age of a person while taking into account their day, month and year of birth. Complete the function below

   ```python
   import datetime
   
   def get_age(birth_year,birth_month,birth_day )
       current_year = datetime.datetime.now().year
       current_month = datetime.datetime.now().month
       current_day = datetime.datetime.now().day
   
       # Complete this function...
      
   ```

   

Test your function by running the following edge cases:

```python
today_year = datetime.datetime.now().year 
today_month = datetime.datetime.now().month
today_day = datetime.datetime.now().day

print(get_age(today_year-34,today_month+1,1))   # This should print 33
print(get_age(today_year-34,test_month, today_day+1)) # This should print 33
print(get_age(today_year, today_month, today_day)) # This should print 0
```

