# Functions



- Functions in programming perform specific functions provided with inputs, they will return an output.

- Similarly to math functions, they have names and are used by passing an argument wrapped in parenthesis:

  ```python
  print("Hello World")
  ```

  In this case:

  - the function is `print()`
  - the argument is `"Hello World"`

#### Math functions

- The `math` module allows you to use mathematic functions. You need to firstly import the module:

  ```python
  import math
  ```

  

- There exists other useful functions performing math operations that we will be using in this course:

  ```python
  import math
  
  ceil(5.5)
  floor(5.5)
  sqrt(9)
  sin(3.14)
  cos(0)
  atan(1)
  acos(1)
  asin(1)
  ```

  

- You may also define your own functions:

  ```python
  def sum(num1, num2):
  	return num1 + num2
  ```



#### Defining your own functions



To define your own functions you must:

- Use the keyword `def` followed by the name of your function
- Add parenthesis `()` 
- (optional) add as many parameters as you need separated by `,`
- Use a semi-colon: `:`
- Use an indentation character (TAB) for every line of code within the function.
- (optional) use the keyword `return` and return a value or expression.



<img src="../Images/function_1.png" height=300/>



Example 3 - Function with parameters and return value



Example 2 - Function without parameters



Example 3: Functions without return value



#### Default values





#### Type hinting

Type hinting reinforces some additional constraints on the types or arguments and returned values of a user defined function. It is optional, but highly recommended to ensure that functions are used as intended.

In this course, you are asked to use type hinting on all your defined functions. Marks will be deduced if you do not.

<img src="../Images/function_type_hinting.png"/> 

```python
def sum(num1: float, num2: float)  -> float :
	value = num1 + num2
	return value
```

```python
sum(20, 5)  #This will work
```

```python
sum("Hello", "there")  #This still works but will display a warning
```

<img src="../Images/function_type_hinting_2.png"/>