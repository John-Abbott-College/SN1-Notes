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



## Generic `for` loop

A `for` loop can be generalized to something that looks like:

> Note: Using `sequence` in the following instructions is not exactly correct, but it is reasonable to think of sequences for now.

`for `*`variable`*` in `*`sequence`*

Where 

* `variable` is just the name of a variable.  It can be any valid variable name

* `sequence` is something that can be looped over 

  *Sounds like a circular argument, I know, but its the best we can do at this level.*



### Examples of `sequence`

Think of sequences a a list of things to be processed.  Like a stack of papers to grade, or a to-do list, or a series of numbers to process.

#### `range()`:

When within a `for` loop, 

* `range(n)` will provide the sequence of numbers  

  $$0, 1, 2 ,... n-1$$

* `range(start, end)` will provide the sequence of numbers 

  $$\text{start}, \text{start}+1, \text{start} + 2 ,... \text{end}-1$$

* `range(start, end, step)` will provide the sequence of numbers  

  $$\text{start}, \text{start}+\text{step}, \text{start} + 2*\text{step} ,... \text{end}-1$$

#### `list`

When within a `for` loop, 

* `list_variable` will provide the contents of the list, one element at a time

#### `file`

When within a `for` loop, 

* `file` will provide the contents of the file, one line at a time

#### `string`

When within a `for` loop, 

* `string_variable` will provide the individual characters of the string, one character at a time



## How does a for-loop work?

Given the following code

```python
for variable in sequence:
  print(variable)
```

As the code starts, the variable will be set to the very 1st *thing* in the sequence (whatever that thing is)

When the code has finished executing everything in the code block (indicated by indentations), then 

* the code goes back to the beginning of the for loop, and
* *variable* will be set the the *next* thing in the sequence

This will continue until there are no *things* left in the sequence.

**Example: for-loop over a number range**

```python
for i in range(3):
  print("I am at index ", i)
print ("all done")
```

Code trace:

| code line # | i    | output printed to console | comment                                                      |
| ----------- | ---- | ------------------------- | ------------------------------------------------------------ |
| 1           | 0    |                           | `i` is set to 1st number in the range sequence (**0**, 1, 2) |
| 2           |      | I am at index 0           |                                                              |
| 1           | 1    |                           | `i` is set to 2nd number in the range sequence (<font color="#939393">0,</font> **1**, 2) |
| 2           |      | I am at index 1           |                                                              |
| 1           | 2    |                           | `i` is set to 3rd number in the range sequence (<font color="#939393">0, 1,</font> **2**) |
| 2           |      | I am at index 2           |                                                              |
| 1           |      |                           | There are no numbers in the range sequence, so for loop quits |
| 3           |      | all done                  | No longer in the for loop                                    |





**Example: for-loop over a list**

```python
fib_list = [1, 1, 2, 3, 5 ]
for number in fib_list:
  print("The next fibanocci number is ", i)
print ("all done")
```

Code trace:

| code line # | number | output printed to console      | comment                                                      |
| ----------- | ------ | ------------------------------ | ------------------------------------------------------------ |
| 1           | 1      |                                | `number` is set to 1st number in the fib_list  [**1**, 1, 2, 3, 5 ] |
| 2           |        | The next fibanocci number is 1 |                                                              |
| 1           | 1      |                                | `number` is set to 2nd number in the fib_list  [<font color="#939393">1</font>, **1**, 2, 3, 5 ] |
| 2           |        | The next fibanocci number is 1 |                                                              |
| 1           | 2      |                                | `number` is set to 3rd number in the fib_list  [<font color="#939393">1, 1,</font> **2**, 3, 5 ] |
| 2           |        | The next fibanocci number is 2 |                                                              |
| 1           | 3      |                                | `number` is set to 4th number in the fib_list. [<font color="#939393">1, 1, 2,</font> **3**, 5 ] |
| 2           |        | The next fibanocci number is 3 |                                                              |
| 1           | 5      |                                | `number` is set to 5th number in the fib_list.  [<font color="#939393">1, 1, 2, 3,</font> **5** ] |
| 2           |        | The next fibanocci number is 5 |                                                              |
| 1           |        |                                | There are no numbers left in the fib_list, so quit for-loop  |
| 3           |        | all done                       | No longer in the for loop                                    |



**Example: for-loop over a string**

```python
name = "sandy"
for character in name:
  print("Character:",)
print ("all done")
```

Code trace:

| code line # | Character | output printed to console | comment                                                      |
| ----------- | --------- | ------------------------- | ------------------------------------------------------------ |
| 1           | s         |                           | `character` is set to 1st character in name  "**s**andy"     |
| 2           |           | Character: s              |                                                              |
| 1           | a         |                           | `character` is set to 2nd character in name  "<font color="#939393">s</font>**a**ndy" |
| 2           |           | Character: s              |                                                              |
| 1           | n         |                           | `character` is set to 3rd character in name   <font color="#939393">sa</font>**n**dy" |
| 2           |           | Character: s              |                                                              |
| 1           | d         |                           | `character` is set to 4th character in name   <font color="#939393">san</font>**d**y" |
| 2           |           | Character: s              |                                                              |
| 1           | y         |                           | `character` is set to 5th character in name   <font color="#939393">sand</font>**y**" |
| 2           |           | Character: s              |                                                              |
| 1           |           |                           | There are no more characters in name, so quit for-loop       |
| 3           |           | all done                  | No longer in the for loop                                    |



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