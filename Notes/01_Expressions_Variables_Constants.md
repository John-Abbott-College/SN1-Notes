

# Variables and Constants

Up to now, you have explored simple lines of code, printing strings of characters and performing simple math calculations. You might have noticed that as your lines of codes grow longer and more complex, they can become hard to read and type.

For instance, if you're calculating the variance of three numbers (measurement of how spread out there are from the average), the operation to type will be:   

```python
((16-(16+ 18+ 19)/3)**2 + (18-(16+ 18+ 19)/3)**2 + (19-(16+ 18+ 19)/3)**2)/3
```

Programming in python, will help you structure your complex calculations and make them much easier to read and understand. This is where variables become crucial to learn.

## **Variables** 

Variables are like small boxes in a computer's memory where values can be stored and changed overtime. They are particularly useful for storing a literal instead of re-typing it every time, or storing the result of an operation, for example `21 +314` in order to use it in another operation at a later point.  Variables are composed of a **name** and a **value**. 

To create a variable in Python, simply write the name you wish to use and use the `=` operator to assign it a value: 

```python
variable_name = value #the value can be any literal, a variable or another expressions. 
```

The value can be a literal, an operation, another variable , or a more complex expression. 



For instance, the following line will create a variable named *sum* and store the result `335` in memory:

```python
sum = 21 + 314
```



Similar to mathematics, variables in programming represent quantities than can change. While, you can use simple names just like  `x`, `y`  in math, it is preferable to give variables a name that is more descriptive of what they represent. In programming, you should always aim at having code that is easy to read and understand. For example, using the variable `t` to represent a temperature reading could lead to confusion because `t` could also mean time, or any other quantity. It is therefore more meaningful to use `temperature`. You may also use abbreviations, so long as they are commonly known (e.g: `max` for the maximum, `min` for the minimum, `avg` for average)

```python
t = 23.0            # t could mean anything 
temperature = 23.0  # temperature is easier to understand
```



**Variable naming strict rules**

- the name of a variable must start with a letter or an underscore character _ 

- the name of a variable cannot start with a digit

- the name must contain only alpha-numeric characters and underscores (`A-z`, `0-9`, and `_`)

- the name must not be any of the **Python keywords**, as these are reserved by Python for predefined purposes and cannot be redefined:

  ```python
  ['False', 'None', 'True', 'and', 'as', 'assert', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']
  ```

- Python is case sensitive! This means that uppercase `APPLE` and lowercase `apple` are not the same variable names, therefore will be considered by python as two different variables.

- You may use alphabet from other languages too for example: `sûr_la_mer`, `переменная`, `Adiós_Señora` are valid variable names.

**Variable naming convention**

Programmers came up with conventions to make code more easy to read and share. The [PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/) contains this list of conventions. Here are a few useful conventions we will reinforce in this course:

- variable names should be lowercase, and underscores should be used to seperate words separated (e.g., avg_temperature, estimation_pi, area_under_curve)
- it's also possible to use mixed case (e.g., myVariable), but only if it is consistently used throughout the source code of the program.



✍️**Challenge**: The ideal Gas Law `PV=nRT`is a fundamental equation in chemistry and physics. The following variable names contain mistakes. Identify and fix them, then ensure that the new name follow the naming conventions.

```python
P pasc =  7.00e5
V_m^3 = 2e-3
N-moles = 55660.0
T = 291
R_pasc/mol = 8.31
```



**How to use variables**

We say that variables are **mutable**, meaning their values can be changed or updated. 

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



To use a variable after it was created, simply re-type its name where you need it (e.g.: `print(temperature)`, or (`temperature +3 `)) and python will use its value in the expression.



```python
temperature = 23.0  # This line creates the variable
print(temperature)  # This line uses the variable, will print 23.0

temperature2 = temperature + 10  #This line uses the variable to create a new one

print("Temperature: " + temperature) # This line combines a string text to with the value 23.0 and prints it
```





**Common mistakes:**

1. Using inexistent variables:

   ```python
   print(x)   #x doesn't exist
   ```

2. Using a variable before creating it:

   ```python
   print(temperature3)  #this will cause an error because temperature3 doesn't exist yet at this point.
   temperature3 = 20
   ```

3. Misspelling a variable:

   ```python
   print(Temperature)  #This will cause an error because Python is case sensitive "T" is not the same as "t"
   ```

   

**Example - Calculating the variance of three numbers**

Let's revisit the lengthy equation we initially introduced: `((16-  (16+ 18+ 19)/3)**2 + (18-  (16+ 18+ 19)/3)**2 + (19-  (16+ 18+ 19)/3)**2)/3`

This equation computes the variance of the grades of three students. The formula to calculate the variance of three numbers is as follows, where `x_m` represents the mean of the grades.
$$
Variance = ((x_1 - x_m)^2 + (x_2 - x_m)^2+(x_3 - x_m)^2)/3
$$
Let's break it down in the following steps and implement them:

1. Enter the results of each student and store them in three variables.
2. Calculate the mean and store the result in a variable.
3. Calculate the squared difference of each grade and store the results into three variables.
4. Calculate the variance and store it into a new variable.
5. Output the variance



**Python implementation of the variance**

Firstly, we need to create three variables representing the student grades and set their values:

```python
# Step 1: Create variables for the grades and enter their values
grade1 = 16
grade2 = 18
grade3 = 19
```

To calculate the mean we can sum the grades and divide by 3 and store the result in a new variable. This new variable can then be reused as many times as required.

```python
# Step 2: Calculate the mean 
mean = (grade1 + grade2 + grade3)/3
```

To compute the squared difference of each grade, we can begin by calculating the difference from the mean and store these differences in new variables (`diff = grade - mean`). Then, using the power operator `**`, we can store the squared differences in another set of variables (e.g., `square_diff = diff ** 2`). While there are no limits in the amount of variable used, intermediate results like `diff` may not be necessary to retain. Hence, we can perform the difference and the power operations into a single calculation. 

```python
# Step 3: Calculate the squared difference for each value:
square_diff_1 = (grade1 - mean)**2
square_diff_2 = (grade2 - mean)**2
square_diff_3 = (grade3 - mean)**2
```

The last step is to calculate the variance by averaging the squared differences:

```python
# Step 4: Calculate the variance
variance = (square_diff_1 + square_diff_2 + square_diff_3)/3
```

Finally, we simply need to print the variance.

```python
# Step 5: Output the variance
print("The variance is:", variance)
```



✍️**Challenge**: Store your age in a variable as a number. Store one of your parent's age in a variable as a number. Using those two variables, calculate the age difference and print it out in a message. 



✍️**Challenge**: Calculate the gravitational potential energy of an object using the following formula, where `m` is the mass of the object, `g` is the acceleration of gravity which is 9.81 m/s^2, `h` is the height at which the object is located. Assume that the object has a mass of 18Kg and is held at a height of 200 m. Ensure that you are following the naming convention mentioned earlier.
$$
Ep=m×g×h
$$


## **Constants**

Constants like in math are suppose to be values that never change. In python, they are treated the same way as variables but their values cannot be modified in the program. We say that constants are **immutable**.  These values are universally acknowledged to be true and they should not changeover time. 

```python
GRAVITATION_ACC = 9.81

print(GRAVITATION_ACC)
```



Typically, Python constants are declared and initialized on different modules or files and need to be imported within the source code. We will learn more about modules at a later moment. 

Within a created `constants.py` file:

```python
PI = 3.14159265359
GRAVITATION_ACC = 9.81
```



To **use** the constants into your `main.py` file:

```python
import constants #We will learn more about the import statement at a later point

print(constants.PI)
print(constants.GRAVITATION_ACC)
```



> ⚠️ The constants can still be modified since there is no built-in way to prevent this in Python. However, programmers follow the convention of using uppercase letters to name constants and treat them as immutable. There are also external modules available that can help "objects" that are constants and protected from modification.

# References

1. *2.6. Statements and Expressions — How to Think like a Computer Scientist: Interactive Edition*. (n.d.). https://runestone.academy/ns/books/published/thinkcspy/SimplePythonData/StatementsandExpressions.html
2. *What are Python Variables, Python Constants and Literals? | Definition*. (2021, June 29). Toppr-guides. https://www.toppr.com/guides/python/python-introduction/variables-constants-literals/python-variables-constants-and-literals/#:~:text=Literals%20are%20raw%20values%20or,cannot%20be%20changed%20or%20updated.