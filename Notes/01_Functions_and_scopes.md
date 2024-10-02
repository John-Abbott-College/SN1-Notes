## Functions and scopes

The scope of a variable defines where it can be accessed in the code. 

A function's parameter, for example, is only available within that function and can't be used outside of it. This concept is illustrated in the code provided.

```python
def my_function():
    print("Do I know that variable?", var)


var = 1
my_function()
print(var)

```

**output:**

```
Do I know that variable? 1
1
```

A variable existing outside a function has scope inside the function's body.

```python
def my_function():
    var = 2
    print("Do I know that variable?", var)
 
 
var = 1
my_function()
print(var)
```

**output:**

```python
Do I know that variable? 2
1
```




✍️**Challenge: What is the output?**

```python 
value = 50
def function1():
   value = 25
   print(value)
    
function1()
print(value)
```




## **Using Loops Inside Functions**

A `for` loop is often used inside functions to automate repetitive tasks. Here's a breakdown of how loops work with functions in Python.

**For Loop Syntax**:

```python
for variable in sequence:
    # code to execute in each iteration
```

The loop iterates over a sequence, performing the same action for each item.




#### **Example 1: Simple Function with a For Loop**

This function prints the numbers from 1 to 5 using a `for` loop:

```python
def print_numbers():
    for i in range(1, 6):
        print(i)

# Call the function
print_numbers()
```

**Explanation**:
The `for i in range(1, 6)` loop iterates over the numbers from 1 to 5, printing each value.




#### **Example 2: Sum of All Integers from 1 to `n`**

This function calculates the sum of all integers from 1 to a given number `n`.

```python
def sum_numbers(n):
    total = 0
    for i in range(1, n+1):
        total += i
    return total

# Example usage:
print(sum_numbers(5))  # Output: 15 (1+2+3+4+5)
```

**Explanation**:
The function uses a loop to sum up all the integers from 1 to `n`. When called with `n = 5`, it returns 15.




#### Example 3: Sum of Squares

```python

def sum_of_squares(n):
    total = 0
    for i in range(1, n + 1):
        total += i ** 2
    return total

# Test the function
print(sum_of_squares(4))  # Output: 30 (1^2 + 2^2 + 3^2 + 4^2)
```

**Explanation**:
The function loops through numbers from 1 to `n` and adds the square of each number to the total. For `n = 4`, the result is 30.
