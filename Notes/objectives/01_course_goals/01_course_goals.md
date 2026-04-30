# Course Goals

_With thanks to Sandy’s contributions_

## Main Goals

- Create and call functions
- Trace code and fix mistakes
- Build an algorithm using core concepts. This task is more open-ended and can have multiple valid solutions.
- Work with lists, including filtering, calculating simple statistics, and creating a new list from existing lists

## Core Concepts

### Variables

- int
- float
- string
- `int(float)`
  - rounds down
- `int(str)`
- `float(str)`
- `None`

### Get user input

- `input("this is my question ")`
- `int(input("ask for an integer ")`)
- `float(input("ask for any number ")`)

```python
number = int(input("Ask your question"))
number = number *15
print(f"The user entered multiplied by 15 is {number})
```

### Simple math functions

While we may supply them the function names, they should now how the following works:

- trigonometry (`math.sin(theta)`, `math.cos(theta)`, ...)
- absolute value $|a-b|$ (`abs(a-b)`)
- round up (`math.ceil(6.1)` gives a value of 7)

### Basic Operators

- plus (`+`)
- minus (`-`)
- division (`/`)
- integer division (`//`)
- modulus (remainder) `%`
  - `23%7` is `2` because `23 = p*7` + **`2`**

### Boolean Comparisons

- equal to (`==`)
- not equal to (`!=`)
- less than (`<`)
- greater than (`>`)
- less than or equal to (`<=`)
- greater than or equal to (`>=`)
- something is in a list (`in`)
- something is not in a list (`not in`)
- something is not None (`is not None`)
- something is None (`is None`)

_Examples_

```python
a = [1, 2, 4, 9, 16]
x = 3
x in a		# this is False
x not in a	# this is True

x = None
x is None		# this is True
x is not None	# this is False
```

### Boolean Operators

- and (`and`)
- or (`or`)
- not (`not`)

### Looping

- looping over a range of numbers (`range(stop)`, `range(start, stop)`, `range(start, stop, step)`)

  ```python
  for i in range(10):
      """ i goes from 0 .. 9 """

  for i in range(3, 10):
      """ i goes from 3 .. 9 """

  for i in range(3, 10, 2):
      """ i will be looped over 3, 5, 7, 9 """
  ```

- looping over list

  ```python
   fruits = ["apple", "banana", "orange"]
   for fruit in fruits:
       print(fruit)
  ```

### Functions

Be able to create and call functions that:

- returns a boolean (e.g. `return a < b`)
- returns a list (e.g. `return ["wow", "cool"]`)
- returns more than one thing (e.g. `return mean, stdev`)

### Lists

- Create an empty list ( `my_list = []` )
- Get the maximum / minimum of a list (`max`, `min`)

  ```python
  a_list=[9, 8, 45, 0, -17]
  maximum = max(a_list)
  # maximum is equal to 45
  ```

- add something to the end of a list (`my_list.append(some_value)`)

  ```python
  a_list=[9, 8, 45, 0, -17]
  a.append(99)
  # a_list is now [9, 8, 45, 0, -17, 99]
  ```

- Remove something from the end of a list ( `my_list.pop()` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  a.pop()
  # a_list is now [9, 8, 45, 0]
  ```

- Get the length of a list ( `len(my_list)` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  z = len(a_list)
  # z equals 5
  ```

- Sort my list (`my_list.sort()` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  a_list.sort()
  # a_list is now [-17, 0, 8, 9, 45]
  ```

- Reverse the order of a list (`my_list.reverse()` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  a_list.reverse()
  # a_list is now [-17, 0, 45, 8, 9]
  ```

- looping over multiple lists (`zip(a, b, ...)`)

  ```python
  first_names = ["Mickey", "Donald", "Elmer", "Bugs"]
  last_names = ["Mouse", "Duck", "Fudd", "Bunny"]
  grades = [98, 54, 13, 87]

  for first,last in zip(first_names, last_names):
      print(f"{first} {last}")

  for first,last, grade in zip(first_names, last_names, grades):
      print(f"{first} {last} has a grade of {grade}")
  ```

- counting how many times have you gone through the list (`enumerate(a)`)

  ```python
  a_list=[9, 8, 45, 0, -17]
  for i, value in enumerate(a_list):
      print(f"The {i} element is {value}" )
  ```

- Access a specific element in a list using an index ( `my_list[3]` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  z = a_list[3]
  # z equals 0
  ```

- Changing the value of a specific element in a list using an index ( `my_list[3] = new_value` )

  ```python
  a_list=[9, 8, 45, 0, -17]
  a_list[3] = 99
  # a_list is now [9, 8, 45, 99, -17]
  ```

- Use negative index to get value in list

  ```python
  a_list=[9, 8, 45, 0, -17]
  print (a_list[2])		# prints 45
  print (a_list[-1])		# prints -17
  print (a_list[-2])		# print 0
  ```



## CSV files

- What's a CSV file?

- What does each line and column represents? 

- Reading a csv file columns into a python lists and converting values to the appropriate data type using `csv.reader`

  > Example: 
  >
  > Consider a CSV file with three columns: *Name, Age, Weight*
  >
  > Sample line:
  >
  > ```
  > ["Bob", "28", "75.0"]
  > ```

  > ```python
  > import csv
  > 
  > filename='example.csv'
  > 
  > 
  > names = []
  > ages = []
  > weights = []
  > 
  > with open(filename, 'r') as file: #No need to memorize this part
  >   reader = csv.reader(file)
  > 	
  >   for line in reader: #line is a list of strings
  >     names.append(line[0]) #remains str
  >     ages.append(int(line[1]) #age stored as int
  >     weights.append(float(line[2])) #weight stored as float 
  > ```

  

  

## Scientific Library

**Matplotlib**

- Making a simple plot/scatter

  ```python
  from matplotlib import pyplot as plt
  
  x_values = [1,2,3,4,5,6]
  y_values = [2,4,6,8,9,7]
  
  plt.plot(x_values, y_values) #Draws a line plot
  plt.show()
  
  plt.scatter(x_values, y_values) #Draws a scatter point
  ```

  

**Numpy**

- Creating an array from a python list

  ```python
  import numpy as np
  x_arr = np.array([1,2,3,4,5])
  ```

  

- Fitting a polynomial function with given x and y data:

  ```python
  import numpy as np
  x_values = [1,2,3,4,5,6]
  y_values = [2,4,6,8,9,7]
  
  # degree 1
  coefficients = np.polyfit(x_values, y_values, deg=1)
  
  slope = coefficients[0]
  intercept = coefficients[1]
  print(f"Linear : f(x) = {slope}x + {intercept}")
  
  # degree 2
  coefficients = np.polyfit(x_values, y_values, deg=2)
  
  # Unpacking a,b, and c for f(x)=ax^2 + bx + c
  a = coefficients[0]
  b = coefficients[1]
  c = coefficients[2]
  
  print(f"Quadratic : f(x) = {a}x^2 + {b}x + {c}")
  ```



- (Optional - but recommended) Performing element-wise arithmetic operations on an array:

  ```python
  # Applies f(x) = 2*x**2 to each x value in x_arr
  
  y_arr =  2*x_arr**2
  ```

  
