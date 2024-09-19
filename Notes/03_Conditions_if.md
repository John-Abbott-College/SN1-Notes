# Conditions 

A programmer writes a program that asks questions, and the computer executes the program and provides answers. When asked a question, computers can only respond with 1 or 0, `True` or `False`. In other words, they can easily answer: *"yes, this is true"* or *"no, this is false."* You will never get responses such as *"Let me think...", "I don't know"*, or *"Probably yes, but I don't know for sure."*

Python uses special **operators** to ask these questions. To make effective use of the answers, you need a mechanism that makes decision based on the answer. 

To make such decisions, Python offers **conditional statements**. These statements allow actions to be taken based on whether specific conditions are true or false. Due to their nature and application, they are called conditional instructions or conditional statements.

### Logical conditions 

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

## Conditional execution: the if statement

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

## And

The and keyword is a logical operator, and is used to combine conditional statements:

#### Example

Test if `a` is greater than `b`, AND if `c` is greater than `a`:

```python
a = 200
b = 33
c = 500
if a > b and c > a:
	print("Both conditions are True")
```

The `if` statement checks if both `a > b` and `c > a` are `True` using the `and` operator. 

Because both conditions are indeed `True`, the code prints "Both conditions are True."

## Or

The `or` keyword is a logical operator, and is used to combine conditional statements:

#### Example:

Test if `a` is greater than `b`, OR if `a` is greater than `c`:

```python
a = 200
b = 33
c = 500
if a > b or a > c:
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



## Order of Operations 

Like **PEDMAS** for math equations ('Parenthesis', 'Exponents', 'Division/Multiplication', 'Addition/Subtraction'), there is an order of operations for resolving `True` and `False`



**Order of Operations, from highest to lowest**

| Operation | Order | Example | Explanation |
| --------- | ----- | ------- | ----------- |
|                |       |                                                          ||
| `in`, `not in` | 1    | `'hi' in greetings` | is something in, or not in, a list (or list-like object) (returns `Boolean`) |
| `is`, `is not` | 1    | `obj is None` | are two objects equivalent (not equal, but literally the same thing) (returns `Boolean`) |
| `<`, `<=`, `>`, `>=`, `!=`, `==` | 1 | `x < y` | comparison of two things (returns `Boolean`) |
| `not` | 2 | `not x` | negating the `True`/`False` value of `x` (returns `Boolean`) |
| `and` | 3 | `x<y and x>z` | combining two `boolean` values (returns `Boolean`) |
| `or` | 4 | `x<y or x>z` | combining two `boolean` values (returns `Boolean`) |

These sets of equations are equivalent (assume all variables are boolean):

```python
x and y or z
(x and y) or z

x or y and z
x or (y and z)

x and not y or z
(x and (not y) ) or z

x or not y and z
x or ( (not y) and z)
```





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





