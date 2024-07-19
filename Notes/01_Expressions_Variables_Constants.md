

# Variables and Constants

So far you have explored simple lines of code where you printed strings of characters and perhaps even made a few math calculations. Maybe you reached a point where your calculations are becoming long and hard to read. Let's imagine, I am trying to calculate the variances of three numbers, the equation becomes hard to read and understand:

```python
((16-(16+ 18+ 19)/3)**2 + (18-(16+ 18+ 19)/3)**2 + (19-(16+ 18+ 19)/3)**2)/3
```

Programming in python, will help you structure your complex calculations and make them much easier to read and understand. This is where variables become crucial to learn.

## **Variables** 

Variables are like small boxes in a computer's memory where we can store values and change them overtime. They are particularly useful if you would like to store a literal instead of re-typing it every time, or to store the result of an operation for example `21 +314` in order to use it in another operation.  Variables have a **name** and a **value**. 

To create a variable in Python, you simply write the name and use the `=` operator to assign a value: 

```python
variable_name = value #the value can be any literal, a variable or another expressions. 
```

The following line will create a variable named *sum* and store the result `335` in memory:

```python
sum = 21 + 314
```

Like to mathematics, variables in programming represent quantities than can be changed. You can use simple names just like in math `x`, `y` to refer to your variables, but it is preferable to give them a name that is more descriptive of what they represent. In programming, you should always aim at having code that is easy to read and understand. For example, using the variable `t` to represent a temperature reading could lead to confusion because `t` could also mean time, or any other quantity. It is therefore more meaningful to use `temperature`. You may also use abbreviations, so long as they are commonly known (e.g: `max` for the maximum, `min` for the minimum, `avg` for average)

```python
t = 23.0            # t could mean anything 
temperature = 23.0  # temperature is easier to understand
```



**Variable naming strict rules**

- the name of a variable must start with a letter or an underscore character _ 

- the name of a variable cannot start with a digit

- the name must contain only alpha-numeric characters and underscores (`A-z`, `0-9`, and `_`)

- the name must not be any of the **Python keywords**, which are reserved by python for predefined reasons and will not let you use them as variable names:

  ```python
  ['False', 'None', 'True', 'and', 'as', 'assert', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']
  ```

- Python is case sensitive! This means that uppercase `APPLE` and lowercase `apple` is not the same variable names, therefore will be considered by python as two different variables.

- You may use alphabet from other languages too for example: `sûr_la_mer`, `переменная`, `Adiós_Señora` are valid variable names.

**Variable naming convention**

Programmers came up with conventions to make code more easy to read and share. The [PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/) contains this list of conventions. Here are a few useful conventions we will reinforce in this course:

- variable names should be lowercase, and underscores should be used to seperate words separated (e.g., avg_temperature, estimation_pi, area_under_curve)
- it's also possible to use mixed case (e.g., myVariable), but only if it is consistently used throughout the source code of the program.



We say that variables are **mutable**, that is, their values can be changed or updated. 

For example, the following lines create a variable called `temperature`, initially setting its value to 23.0 and subsequently updating its value to 26.0:

```python
temperature = 23.0
temperature = 26.0 #the value has changed
```

In python, the value of a variable can be changed to a literal of a different type, though this  practice is **highly discouraged**.

For example, the following line assigns a literal of type string to a variable which initially was numeric:

```python
temperature = 23.0
temperature = "too hot"
```

To prevent assigning a variable a literal of a different type in Python, you can use **type checking**, we will discuss this later in the course.

**How to use variables** 

So far we saw how to create a variable and you may create as many variables as you need in the program but make sure you are only creating a variable you need. 

Let's go back to the long equation we introduced in the beginning: `((16-  (16+ 18+ 19)/3)**2 + (18-  (16+ 18+ 19)/3)**2 + (19-  (16+ 18+ 19)/3)**2)/3`

It represents the calculation of the variance of three students' grades. The equation to calculate the variance of three numbers is the following where `x_m` represents the mean of the grades.
$$
Variance = ((x_1 - x_m)^2 + (x_2 - x_m)^2+(x_3 - x_m)^2)/3
$$
Let's break it down in the following steps and implement them:

1. Enter the results of each student and store them into three variables named: `grade1`, `grade2`and `grade3`.
2. Calculate the mean and store the result in a variable named `mean`.
3. Calculate the squared difference from the mean for each grade and store the results into three variables `square_diff_1`, `square_diff_2` and `square_diff_3.`
4. Add the squared differences and divide by 3 and store the result in a variable called `variance`
5. Output the variance



Let's implement those steps in python:

```python
# Step 1: Create variables for the grades and enter their values
grade1 = 16
grade2 = 18
grade3 = 19

# Step 2: Calculate the mean 
mean = (grade1+ grade2+ grade3)/3

# Step 3: Calculate the squared difference for each value:
square_diff_1 = (16- mean)**2
square_diff_2 = (18- mean)**2
square_diff_3 = (19- mean)**2

# Step 4: Calculate the variance
variance = (square_diff_1 + square_diff_2 + square_diff_3)/3

# Step 5: Output the variance
print(variance)
```



✍️**Challenge**: Store your age in a variable as a number. Store one of your parent's age in a variable as a number. Using those two variables, calculate the age difference and print it out in a message. 



## **Constants**

Constants like in math are suppose to be values that never change. In python, they are treated the same way as variables but their values are not modified in the program. We say that constants are **immutable**.  These values are universally acknowledged to be true and they cannot be changed over time. Typically, python constants are declared and initialized on different modules or files and need to be imported within the source code. We will learn more about constants at a later moment. 

```python
PI = 3.14159265359
```







# References

1. *2.6. Statements and Expressions — How to Think like a Computer Scientist: Interactive Edition*. (n.d.). https://runestone.academy/ns/books/published/thinkcspy/SimplePythonData/StatementsandExpressions.html
2. *What are Python Variables, Python Constants and Literals? | Definition*. (2021, June 29). Toppr-guides. https://www.toppr.com/guides/python/python-introduction/variables-constants-literals/python-variables-constants-and-literals/#:~:text=Literals%20are%20raw%20values%20or,cannot%20be%20changed%20or%20updated.