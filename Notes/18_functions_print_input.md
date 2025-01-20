# Python basic I/O Functions

To better understand input and output functions, we must first differentiate between the programmer (you) and the user (anyone who runs your code). When you type lines of code such as `print('Hello')` you are instructing the python program to display the message "Hello!" in the console window. 

When a user, let's say Bob runs the code, they will not see your source code. They will only see what is printed to the console window. If you need an information from the user, you must use the `input()` function instead. This function awaits an answer from the user before moving on to the next step. 

<img src="Images/user_vs_programmer.png" height=350/>

From Bob's perspective, he only sees what your program prints and the question your program requires an answer for. Bob can only type his answer:

<img src="Images/print_input.png" />

## Output with `print()`

Print is a built-in python function which prints the specified message to the screen or console window of your program:

- To print a simple string, you may just type the string within the parenthesis:

```python
print("Hello")
```

- To print a variable, you may simply write the name of the variable within parenthesis:

```python
a = 10
print(a)
```

- To print multiple objects, you may use the comma separator`,` between the objects. The various printed objects will be separated by a space ' ':

```python
a = 10
b = 15
c = 20
print("The values are: ", a, b, c)
```

Output: 

The values are:  10 15 20

- To print a string combined with a number, you must first convert the number into a string, then concatenate them using the `+` operator:

```python
a = 10
print("The value of a is " + str(a))
```

- To print a string combined with a number, you may also use `f-strings`:

```python
a = 10
print(f"The of a is {a}")
```



## Input with `input()`

Input is a built-in function that enables interactions with the users by gathering input during the program's execution.

- To use the `input` function, simply use parenthesis to call it `()` and this will be sufficient to require an input from the user.

```python
name = input()
```

- The question asked to the user can be specified in between parenthesis:

```python
name = input("What is your name?")
```

- The returned value of the `input()` function is always a string `str`:

```python
age = input("What is your age?")
age + 3           # <--- error
print(type(age))  # This will return `<class str>`
```

- To use the inputted value, you must convert it into the appropriate numeric type by using the `int()` or `float()` functions

```python
age = int(input("What is your age? "))
age + 3
```

- You must be careful to use the correct data type for conversion because if the user inputs a value of a wider type, this will cause an error:

```python
height = int(input("What is your height?"))
print(height)
```

```text
>>> What is your height? 5.5
```

- In this case, the correct conversion function is `float()`:

```python
height = float(input("What is your height?"))
print(height)
```

```text
 >>> What is your height? 5.5
 5.5
```



## Common mistakes

**Print without parenthesis** 

```python
print "hi"  #<--- print is a function, you must call it with parenthesis 
```



**Correct answer:**

```
print("hi")
```



**Printing many objects **

```python
print("hi")  name age height # <--- ERROR
```



**Possible answer 1**

Combining strings using the `+` operator.

```
print("hi " + name + " your age is: " + str(age) + " and your height is: " + str(height)) 
```



**Possible answer 2**

Use comma `,` to separate multiple objects within the `print()` call

```python
print("hi ", name, "your age is :", age, " and your height is: ", height)
```

**Possible answer 3**

Use `f-strings` 

```python
print(f"hi {name}  your age is: {age} and your height is: {height}")
```



**Answer instead of a question**

```python
name = input("Robert")  # <--- Error: putting the answer instead of question
```

```python
name = input("What is your name?")
```



**Using `input` everywhere**

- Only use `input()` wherever you require an answer from the user, otherwise there is no need in using it. 

```python
x = input(3 + 2)    #<--- input() should not be used here
```



**Correct answer:**

```python
x = 3 + 2 
```





