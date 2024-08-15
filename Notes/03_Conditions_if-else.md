## The if-else statement

An `if` statement can have an optional `else` clause. The `else` statement executes if the condition in the `if` statement evaluates to `False`.



```
if condition:
    # body of if statement
else:
    # body of else statement
```

Here, if the `condition` inside the `if` statement evaluates to

- **True** - the body of `if` executes, and the body of `else` is skipped.
- **False** - the body of `else` executes, and the body of `if` is skipped

<img src="Images/if_2.png" height="300">

Consider the following code:

```python
number = int(input('Enter a number: '))

if number > 0:
    print('Positive number')
else:
    print('Not a positive number')

print('This statement always executes')
```

Sample output

```
Enter a number: 10
Positive number
This statement always executes
```

- If user enters **10**, the condition `number > 0` evalutes to `True`. Therefore, the body of `if` is executed and the body of `else` is skipped.
- If user enters **0**, the condition `number > 0` evalutes to `False`. Therefore, the body of `if` is skipped and the body of `else` is executed.



#### **Example :**

**how to identify the larger of two numbers**:

```python
# define two numbers
number1 = 200
number2 = 45
 
# Choose the larger number
if number1 > number2:
    larger_number = number1
else:
    larger_number = number2
 
# Print the result
print("The larger number is:", larger_number)
```

✍️**Challenge**: Write a Python program that asks the user to input a number and then checks if the number is even or odd.

## The elif statement

The `if...else` statement is used to execute a block of code among two alternatives.

However, if we need to make a choice between more than two alternatives, we use the `if...elif...else` statement.

The `elif` keyword is short for "else if" and is used to check multiple conditions, stopping as soon as it finds the first true condition.

```python
if condition1:
    # code block 1

elif condition2:
    # code block 2

else: 
    # code block 3
```

<img src="Images/if_3.png" height="400">

The way to assemble subsequent *if-elif-else* statements is sometimes called a **cascade**.

Some additional attention has to be paid in this case:

- you **mustn't use else without a preceding if**;
- else is always the **last branch of the cascade**, regardless of whether you've used elif or not;
- else is an **optional** part of the cascade, and may be omitted;
- if there is an else branch in the cascade, only one of all the branches is executed;
- if there is no else branch, it's possible that none of the available branches is executed.

This may sound a little puzzling, but hopefully some simple examples will help shed more light.

Consider the following code:

```python
number = -5

if number > 0:
    print('Positive number')

elif number < 0:
    print('Negative number')

else:
    print('Zero')

print('This statement is always executed')
```

Sample output

```
Negative number
This statement is always executed
```

Here, the first condition, `number > 0`, evaluates to `False`. In this scenario, the second condition is checked.

The second condition, `number < 0`, evaluates to `True`. Therefore, the statements inside the `elif` block is executed.

In the above program, it is important to note that regardless the value of `number` variable, only one block of code will be executed.



✍️**Challenge**: Write a Python program that asks the user to input a temperature in Celsius and then checks if the temperature is below freezing, above boiling, or in between.



## Nested if-else statements

Consider the case where the **instruction placed after the if is another if**.

It is possible to include an `if` statement inside another `if` statement. 

```python
if condition:
    if nested_condition:
        # ested code block 1
     else:
        # nested code block 2
 else:
     # nested code block 3

```

#### Example:

```python
number = 5

# outer if statement
if number >= 0:
    # inner if statement
    if number == 0:
      print('Number is 0')
    
    # inner else statement
    else:
        print('Number is positive')

# outer else statement
else:
    print('Number is negative')
```

Sample output

```
Number is positive
```

Here's how this program works.

<img src="Images/if_4.png" height="400">

#### Here are two important points:

- this use of the if statement is known as **nesting**; remember that every else refers to the if which lies **at the same indentation level**; you need to know this to determine how the *if*s and *else*s pair up;

- consider how the **indentation improves readability**, and makes the code easier to understand and trace.

  

✍️**Challenge**: Write a Python program that assigns a letter grade based on a numeric score. Ask the user to input a score, then determine and print the letter grade:

- A: 90-100
- B: 80-89
- C: 70-79
- D: 60-69
- F: below 60
