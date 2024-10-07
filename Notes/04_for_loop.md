# For loop

A `for-loop` allows you to repeat lines of code `n` amount of times.  Imagine a guessing game coded in python which lets the player guess a number.  What if the game would like to let the player have 10 tries. A `for` loop repeats the statement whiling  **counting the "turns"** .

The *for* loop is actually capable of handling more complex tasks, such as **iterating through large collections of data, item by item**. We’ll explore that in more detail soon, but for now, we'll focus on a simpler use of the *for* loop.

**Example:**

```python
for item in sequence:
    # do_something()
   
```

Here are some key elements to understand:

- The *for* keyword starts the loop, and no condition is needed as the loop manages this internally.
- The variable following the *for* keyword, known as the **control variable**, automatically tracks the loop’s iterations.
- The *in* keyword defines the sequence of values the control variable will iterate over.
- The loop body can contain instructions like *do_something()*, but if no action is needed, you can use the *pass* keyword as a placeholder.
- In the example `for item in sequence:`, the loop will go through each item in the sequence and perform the specified action.





##  The range() function

In Python, the  `range()`function returns a sequence of numbers.

**Example:**

```
values = range(4)
```

Here, `range(4)` returns a sequence of **0**, **1**, **2** ,and **3**.

Since the `range()` function returns a sequence of numbers, we can iterate over it using a `for` loop. 

**Example:**

```python
# iterate from i = 0 to i = 4
for i in range(5):
    print("The value of i is currently", i)

```

output:

```python
The value of i is currently 0
The value of i is currently 1
The value of i is currently 2
The value of i is currently 3
The value of i is currently 4
```

The loop has been executed 5 times (it's the range() function's argument), the last control variable's value is 4 (not 5, as **it starts from 0**, not from 1)

### Two arguments range() function 

The range() function invocation may be equipped with two arguments, not just one:

⚠️ **Note:** the range() function **accepts only integers as its arguments**, and generates sequences of integers.

**Example:**

```python
for i in range(2, 8):
    print("The value of i is currently", i)
 
```

In this case, the first argument determines the initial (first) value of the control variable. The last argument shows the first value the control variable will not be assigned.

output:

```python
The value of i is currently 2
The value of i is currently 3
The value of i is currently 4
The value of i is currently 5
The value of i is currently 6
The value of i is currently 7
```



The first value shown is 2 (taken from the range()'s first argument.), and the last is 7 (although the range()'s second argument is 8).

### Three arguments range() function 

The range() function may also accept **three arguments** 

**Example:**

```python
for i in range(2, 8, 3):
    print("The value of i is currently", i)

```

The third argument is an **increment** – it's a value added to control the variable at every loop turn (as you may suspect, the **default value of the increment is 1**).

output:

```python
The value of i is currently 2
The value of i is currently 5
```



## **Examples of Loops Inside Functions**

A `for` loop is often used inside functions to automate repetitive tasks. Here's a breakdown of how loops work with functions in Python.




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