

# Variables and Constants

Up to now, you have explored simple lines of code, printing strings of characters and performing simple math calculations. You might have noticed that as your lines of codes grow longer and more complex, they can become hard to read and type.

For instance, if you're calculating the variance of three numbers[^1], the operation to type will be:   

```python
((16-(16+ 18+ 19)/3)**2 + (18-(16+ 18+ 19)/3)**2 + (19-(16+ 18+ 19)/3)**2)/3
```

Programming in python, will help you structure your complex calculations and make them much easier to read and understand. This is where variables become crucial to learn.



> [^1]: Variance is statistical measurement of how spread out data points are from the average.

## **Variables** 

A variable is a temporary holding place for a value. Think of it as a box that can store **a single** item.

The value inside a variable can be of different types, for example:

- a number, such as the user's hourly pay, or the number of students in a course;

- a word or sentence (aka. a "string"), such as the user's name;

- many other things that we'll visit later...

  

Variables are composed of a **name** and a **value**. 



```python
variable_name = value 
```

To create a variable in Python, simply write the name you wish to use and use the assignment `=` operator to assign it a value: 

```python
hourlyPay = 21
numStudents = 30

userName = "Bob"
greeting = "Hello there!"
```



You may also store the result of an operation. For instance, the following line will create a variable named *sum* and store the result `335` in memory:

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.obWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.odmFyaWFuY2VfY2FsY3VsYXRpb24ucHk=~XQAAgADuAQAAAAAAAAARiAboqXJXBpm36NqkJLaNPF1c1ucFcfiEh0ASRV_yMEV6v276KU1KmFL_6euCoH4XrTMEbhLF7p9xSVzg4QD0NvxH77fwjvaz3Wgm7QGxWY3PmcXpfzgzGPyfpbG2E6ExARnKdr6_2MtGFk5YzN3gF2iGDpUawUaL0FMJ5RMathH-I1Op9q8U3ho2iMOtj9nPoBaVDXaLMByGMEX7V7Qo6lkhy57YDcR6t4JTkR-7IYTLXWD84trQ17lalXiMPav-iYYaPP-zCIZfdvlvBA-XqF1wAAbdSWINLkhzUf_wOs6g.odmFyaWFibGVzX2NoYWxsZW5nZTEucHk=~XQAAgABYAAAAAAAAAAAwmcjVNAzI1sPTb1Rnd9nMwlZIpKAWg951RSFcvuLGhPFNLZy_RWTjWPIVTvhthfgdoQfOR8q5KNeb43Zsqm31fvjE9YA=.odmFyaWFibGVzX2NoYWxsZW5nZTIucHk=~XQAAgACiAAAAAAAAAAAjlIQmAnNNrQCVCf48HqW0cEfvMtc8dhgTDH-0GM-qKH4b-38tGNpwASZYjBd7BeI0ZgeG0PoXiAy8z824TxqY25wTpBj2ahbMfJUtNa95eEM85oCAw1DR8oNSREQb4U9bdiHPuT4HW73r8PSZfNn_8NEwAA==.fdXNpbmdfdmFyaWFibGVzLnB5~XQAAgAAkAAAAAAAAAAA5nUnZDQlRuuKeP2atnly3RpvCWkCz75lWzK3FI5DhUr8bsfKf_uNwAA==.~lang=py-novice.~showLineNumbers=true.e1" target="_blank">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
sum = 21 + 314       # operation 
average  = sum / 2   # using another variable
```



Let's break down the way variables are created and in Python, the following line is evaluated **from right to left**:

<img src="Images/Variables_assignment.png" height=250/>

1. The expression on the **right side** of the `=` sign is evaluated first.
2. Then, if the variable on the **left side** doesn't already exist, will be created.
3. The variable is **assigned** with the result from step 1.
4. If we use the variable again, the **assignment is updated** with a new value.
5. Now, when the variable is used it returns the most latest value. 

Given that assignments are evaluated from right to left in Python, the expression below is **correct** although it is mathematically not correct:  

```python
x = 2
x = x + 1  # This is valid in programming
```

Let's run the example in codeboot...

<div class="button-container">     
    <a href="https://app.codeboot.org/4.1.2/?init=.odXNpbmdfdmFyaWFibGVzXzIucHk=~XQAAgACAAQAAAAAAAAA6GUn-74cyTh0__GhBNjgdVfqEsZ-12mb5qH1w6HItSS8aB7YPpB70sX-c_R-tuJfsZ7Q5rD2_gLB0p_txmGHlhNTJbW0X5OQh_zuMqn6hVMcGuk-_OFhOu7uWqIoGNneXmnvCASdmSPMOycQkIgDfe9X3Z4CqXqHOS2YuLWkA_-gZ9Mg=.fYXNzaWduaW5nX3ZhcmlhYmxlcy5weQ==~XQAAgAAXAAAAAAAAAAA8CAOiEWEDQUfSteh5uxz_eJ-pfPsoZcaE__9yMgAA.~lang=py-novice.a" target="_blank">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>


The value of x is increased by 1.



### Variable naming strict rules

1. The variable name **cannot** start with a number, only with letters or `_`

2. It must **contain only** letters, numbers and underscores (`A-z`, `0-9`, and `_`)

3. It cannot contain a **space character**, nor **punctuation character**, nor any **special character** (@, #, $, %, ?, etc..)

4. It must not be any of the [**Python keywords**](https://www.w3schools.com/python/python_ref_keywords.asp), as these are reserved by Python for predefined purposes.



**Notes:** 

- Python is case sensitive! This means that uppercase `APPLE` and lowercase `apple` are not the same variable names, therefore will be considered by python as two different variables.

- You may use alphabet from other languages too for example: `sûr_la_mer`, `переменная`, `Adiós_Señora` are valid variable names.



### Variable naming convention

Now that you've seen that programming expressions don't play by the math rules, let's break away even more from your math habits.

While, you can use simple names just like  `x`, `y`, it is preferable to give variables a name that is more descriptive of what they represent. 



> 👉 Variable name should be **meaningful**!
>
> Anyone reading your code should be able to guess **what the variable represents** and **how it will be used** just based on the variable name.



For example, using the variable `t` to represent a temperature reading could lead to confusion because `t` could also mean time, or any other quantity. It is therefore more meaningful to use `temperature`. 

```python
3t = 23.0           # ERROR (cannot start with number)
t = 23.0            # BAD!  
temperature = 23.0  # GOOD!
```



You may also use abbreviations, so long as they are commonly known (e.g: `max` for the maximum, `min` for the minimum, `avg` for average)

> 
>
> 💣 Code submitted with poor variable names will have marks deducted.
>
> 



Programmers came up with conventions to make code more easy to read and share. The [PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/) contains this list of conventions. Here are a few useful conventions we will reinforce in this course. You may select any of these conventions so long as you are consistent throughout your solutions.



| Convention | Formatting | Examples                                               |
| ---------- | :--------- | :----------------------------------------------------- |
| Snake case | two_words  | `avg_temperature`, `estimation_pi`, `area_under_curve` |
| Camel Case | twoWords   | `avgTemperature`, `estimationPi`, `areaUnderCurve`     |

<img src="Images/variables_snake_camel_case.png" height=300/>

Source: Convert Naming Convention, https://github.com/NewGuy012/convert-naming-convention





✍️**Challenge**: The following variable names contain mistakes. Identify and fix them, then ensure that the new name follow the camel case naming convention. Repeat the exercise, this time using the snake case convention. Use a Python Terminal to validate your answers.

```python
2weeksPay = 200.0
employee# = 5612
VACATION_DAYS.2024 = 2
Yearly^Salary = 4800
In$urance_percent = 3.0

```

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.obWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.fdmFyaWFibGVfbmFtaW5nX2NoYWxsZW5nZS5weQ==~XQAAgABqAAAAAAAAAAAxGktU7aCPLUSkW8nfnXXLqMqgrHZ6V_ZyI3UWjAIZ_DyIEHz42GejNbK-4tRmZA3BGgGVAKDKDVza5CEkr5k-qWLXy_tbNC59FU3X2XUCY_sEy3JtV9XqTgw7L2uf7LnH_CJakP-_KsAA.~lang=py-novice.~showLineNumbers=true.e" target="_blank">         
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>


**How to use variables**

We say that variables are **mutable**, meaning their values can be changed or updated over time. 

For example, the following lines create a variable called `temperature`, initially setting its value to 23.0 and subsequently updating its value to 26.0:

```python
temperature = 23.0
temperature = 26.0 #the value has changed
```



To determine the type of a variable, you can use the function `type()`:

```python
print(type(temperature))
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

print("Temperature: ", temperature) 
print("Temperature2:", temperature2)
```



<div class="button-container">     
    <a href="https://app.codeboot.org/4.1.2/?init=.fdXNpbmdfdmFyaWFibGVzXzIucHk=~XQAAgACAAQAAAAAAAAA6GUn-74cyTh0__GhBNjgdVfqEsZ-12mb5qH1w6HItSS8aB7YPpB70sX-c_R-tuJfsZ7Q5rD2_gLB0p_txmGHlhNTJbW0X5OQh_zuMqn6hVMcGuk-_OFhOu7uWqIoGNneXmnvCASdmSPMOycQkIgDfe9X3Z4CqXqHOS2YuLWkA_-gZ9Mg=.~lang=py-novice.e1" target="_blank">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>




**Common mistakes:**

1. Using inexistent variables:

   ```python
   print(x)   #x doesn't exist
   ```

2. Using a variable before **creating it**:

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

<img src="Images/Equations/variance.png" height=50/>

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

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.obWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.fdmFyaWFuY2VfY2FsY3VsYXRpb24ucHk=~XQAAgADuAQAAAAAAAAARiAboqXJXBpm36NqkJLaNPF1c1ucFcfiEh0ASRV_yMEV6v276KU1KmFL_6euCoH4XrTMEbhLF7p9xSVzg4QD0NvxH77fwjvaz3Wgm7QGxWY3PmcXpfzgzGPyfpbG2E6ExARnKdr6_2MtGFk5YzN3gF2iGDpUawUaL0FMJ5RMathH-I1Op9q8U3ho2iMOtj9nPoBaVDXaLMByGMEX7V7Qo6lkhy57YDcR6t4JTkR-7IYTLXWD84trQ17lalXiMPav-iYYaPP-zCIZfdvlvBA-XqF1wAAbdSWINLkhzUf_wOs6g.~lang=py-novice.~showLineNumbers=true.e1" target="_blank">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>






✍️**Challenge**: Store your age in a variable as a number. Store one of your parent's age in a variable as a number. Using those two variables, calculate the age difference and print it out in a message. 

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.obWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.odmFyaWFuY2VfY2FsY3VsYXRpb24ucHk=~XQAAgADuAQAAAAAAAAARiAboqXJXBpm36NqkJLaNPF1c1ucFcfiEh0ASRV_yMEV6v276KU1KmFL_6euCoH4XrTMEbhLF7p9xSVzg4QD0NvxH77fwjvaz3Wgm7QGxWY3PmcXpfzgzGPyfpbG2E6ExARnKdr6_2MtGFk5YzN3gF2iGDpUawUaL0FMJ5RMathH-I1Op9q8U3ho2iMOtj9nPoBaVDXaLMByGMEX7V7Qo6lkhy57YDcR6t4JTkR-7IYTLXWD84trQ17lalXiMPav-iYYaPP-zCIZfdvlvBA-XqF1wAAbdSWINLkhzUf_wOs6g.fdmFyaWFibGVzX2NoYWxsZW5nZTEucHk=~XQAAgABYAAAAAAAAAAAwmcjVNAzI1sPTb1Rnd9nMwlZIpKAWg951RSFcvuLGhPFNLZy_RWTjWPIVTvhthfgdoQfOR8q5KNeb43Zsqm31fvjE9YA=.~lang=py-novice.~showLineNumbers=true.~hidden=true.e" target="_blank">         
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>


✍️**Challenge**: Calculate the gravitational potential energy of an object using the following formula, where `m` is the mass of the object, `g` is the acceleration of gravity which is 9.81 m/s^2, `h` is the height at which the object is located. Assume that the object has a mass of 18Kg and is held at a height of 200 m. Ensure that you are following the naming convention mentioned earlier.

<img src="Images/Equations/gravitational_potential_energy.png" height=60/>

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.obWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.odmFyaWFuY2VfY2FsY3VsYXRpb24ucHk=~XQAAgADuAQAAAAAAAAARiAboqXJXBpm36NqkJLaNPF1c1ucFcfiEh0ASRV_yMEV6v276KU1KmFL_6euCoH4XrTMEbhLF7p9xSVzg4QD0NvxH77fwjvaz3Wgm7QGxWY3PmcXpfzgzGPyfpbG2E6ExARnKdr6_2MtGFk5YzN3gF2iGDpUawUaL0FMJ5RMathH-I1Op9q8U3ho2iMOtj9nPoBaVDXaLMByGMEX7V7Qo6lkhy57YDcR6t4JTkR-7IYTLXWD84trQ17lalXiMPav-iYYaPP-zCIZfdvlvBA-XqF1wAAbdSWINLkhzUf_wOs6g.odmFyaWFibGVzX2NoYWxsZW5nZTEucHk=~XQAAgABYAAAAAAAAAAAwmcjVNAzI1sPTb1Rnd9nMwlZIpKAWg951RSFcvuLGhPFNLZy_RWTjWPIVTvhthfgdoQfOR8q5KNeb43Zsqm31fvjE9YA=.fdmFyaWFibGVzX2NoYWxsZW5nZTIucHk=~XQAAgACiAAAAAAAAAAAjlIQmAnNNrQCVCf48HqW0cEfvMtc8dhgTDH-0GM-qKH4b-38tGNpwASZYjBd7BeI0ZgeG0PoXiAy8z824TxqY25wTpBj2ahbMfJUtNa95eEM85oCAw1DR8oNSREQb4U9bdiHPuT4HW73r8PSZfNn_8NEwAA==.~lang=py-novice.~showLineNumbers=true.e1" target="_blank">         
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>




### Type Hinting

The value can be a numeric literal, a string, an operation, another variable , or a more complex expressions.  Even though Python doesn't require you to specify a variable's type, we'll use ***type hinting*** in this course to emphasize that a variable should always be of a specific type.

```python
hourlyPay: int = 21
numStudents: int = 30

userName: str = "Bob"
greeting: str = "Hello there!"
```



## **Constants**

Constants like in math are suppose to be values that never change. In python, they are treated the same way as variables but their values cannot be modified in the program. We say that constants are **immutable**.  These values are universally acknowledged to be true and they should not changeover time. 

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

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oY29uc3RhbnRzLnB5~XQAAgAApAAAAAAAAAAAoEkAC0ByzvCjtabl8Z6dvBqSFs4Ja8-Mtb6eYdqrKQyWKGFlBmPcj6dJn__9EtAAA.fbWFpbi5weQ==~XQAAgABGAAAAAAAAAAA0m0pnuFI8c82uP8D3Fk1IlyHNgwiBZDgkH_4O_wPGGIGdZI9eQx0G9DV7JFShOMad8E3zj__UqAAA.~lang=py-novice.~showLineNumbers=true.~hidden=true.e" target="_blank">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>


> ⚠️ The constants can still be modified since there is no built-in way to prevent this in Python. However, programmers follow the convention of using uppercase letters to name constants and treat them as immutable. There are also external modules available that can help "objects" that are constants and protected from modification.

# References

1. *2.6. Statements and Expressions — How to Think like a Computer Scientist: Interactive Edition*. (n.d.). https://runestone.academy/ns/books/published/thinkcspy/SimplePythonData/StatementsandExpressions.html
2. *What are Python Variables, Python Constants and Literals? | Definition*. (2021, June 29). Toppr-guides. https://www.toppr.com/guides/python/python-introduction/variables-constants-literals/python-variables-constants-and-literals/#:~:text=Literals%20are%20raw%20values%20or,cannot%20be%20changed%20or%20updated.