# Conditions 

A programmer writes a program that asks questions, and the computer executes the program and provides answers. When asked a question, computers can only respond with 1 or 0, `True` or `False`. In other words, they can easily answer: *"yes, this is true"* or *"no, this is false."* You will never get responses such as *"Let me think...", "I don't know"*, or *"Probably yes, but I don't know for sure."*

Python uses special **operators** to ask these questions. To make effective use of the answers, you need a mechanism that makes decision based on the answer. 

To make such decisions, Python offers **conditional statements**. These statements allow actions to be taken based on whether specific conditions are true or false. Due to their nature and application, they are called conditional instructions or conditional statements.

### Logical conditions - reminder

- Equals: `a == b`
- Not Equals: `a != b`
- Less than: `a < b`
- Less than or equal to: `a <= b`
- Greater than: `a > b`
- Greater than or equal to: `a >= b`

A conditional statement in Python includes the following elements in this specific order:

```python
if condition:
    body of if_statement
```

1. The `if` keyword followed by a space
2. A condition that evaluates to `True` (non-zero value) or `False` (zero value).
3. A colon followed by a newline.
4. An indented instruction or set of instructions. 
5. All lines in the indented part must have the same indentation. Mixing spaces and tabs is not allowed in Python 3.

The statement works as follows:

- If the `condition`  is true (non-zero value), the indented statement(s) will be executed.
- If the `condition`  is false (zero value), the indented statement(s) will be skipped, and execution will continue with the instruction after the indentation block.

<img src="Images/if_1.png" height="300">

## Conditional execution: the `if` statement

Conditionally executed statements must be indented. This indentation creates a clear and readable structure, making it easy to see all possible execution paths in the code.

Consider the following code:

```python
number = 7

# check if number is greater than 0
if number > 0:
    print(f'{number} is a positive number.')

print('A statement outside the if statement.')
```

The `if` statement checks if the number is greater than `0`. If the condition is true, it prints that the number is positive.

The second `print` statement is outside the `if` block and will execute every time the code runs, showing that it is independent of the `if` condition.

## Logical operator - reminder

- `and`: The and keyword is a logical operator, and is used to combine conditional statements:
- `or`: The `or` keyword is a logical operator, and is used to combine conditional statements:
- `not` : The `not` keyword is a logical operator, and is used to reverse the result of the conditional statement:



## Combining conditional statements

#### Example

Consider the following numbers: `number1 = 200`,`number2 = 33`,`number3 = 500`. We would like to verify if number1 is greater than number2 **and** if number3 is greater than number1. We could write two nested ifs:

- If number1 is greater than number2, then:
  - If number 3 is greater than number2, then:
    - Display: "number 2 is the smallest number"

This would translate into:

```python
number1 = 200
number2 = 33
number3 = 500
if number1 > number2:
    if  number3 > number1:
		print("Both conditions are True")
```

Test if `a` is greater than `b`, AND if `c` is greater than `a`:

```python
number1 = 200
number2 = 33
number3 = 500
if number1 > number2 and number3 > number1:
	print("Both conditions are True")
```

The `if` statement checks if both `a > b` and `c > a` are `True` using the `and` operator. 

Because both conditions are indeed `True`, the code prints "Both conditions are True."

## Or

The `or` keyword is a logical operator, and is used to combine conditional statements:

#### Example:

Test if `a` is greater than `b`, OR if `a` is greater than `c`:

```python
number1 = 200
number2 = 33
number3 = 500
if (number1 > number2) or (anumber1> number3):
	print("At least one of the conditions is True")
```

The `if` statement checks if either `a > b` or `a > c` is `True` using the `or` operator. 

Because `a > b` is `True`, the overall condition is `True`, so the code prints "At least one of the conditions is True."

## Not

The `not` keyword is a logical operator, and is used to reverse the result of the conditional statement:

#### Example:

Test if `a` is NOT greater than `b`:

```python
a = 33
b = 200
if not a > b:
	print("a is NOT greater than b")
```

The `if` statement checks if `a` is not greater than `b` by negating the result of the comparison `a > b` using the `not` operator.

Since `a > b` is `False`, `not a > b` is `True`, so the message "a is NOT greater than b" is printed.

✍️**Challenge**: Write a Python program to check if a number is divisible by both 2 and 3.





### Examples

PAY ATTENTION TO THE PARENTHESIS

I want a large pizza and either a coke or rootbeer

```python
if large_pizza==1 and (coke==1 or rootbeer==1):
  print("OK")
```



I want a large pizza or 2 small pizzas and a coke

```python
if (large_pizza==1 or small_pizza==2) and coke==1:
  print("OK")
```



I want 8 large pizzas and 15 cokes and 15 rootbeers, and if they don't have rootbeers, then 30 cokes

```python
if large_pizza == 8 and ( ( cokes == 15 and rootbeers == 15) or cokes == 30):
	print("OK")
```





