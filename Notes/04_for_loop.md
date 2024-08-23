# For loop

Another kind of loop available in Python comes from the observation that sometimes it's more important to **count the "turns" of the loop** than to check the conditions.

Imagine that a loop's body needs to be executed exactly 10 times. If you would like to use the while loop to do it, it may look like this:

```python
i = 0
while i < 100:
    # do_something()
    i += 1
```

You need to increment `i`, which acts as a counter to track the number of loops.

⚠️ **Note:** In Python, we use indentation to define a block of code, such as the body of a loop. 

For tasks like these, there's a loop specifically designed for the job, called the *for* loop.

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



## Looping Through a String

Even strings are iterable objects, they contain a sequence of characters:

**Example:**

Loop through the letters in the word "banana":

```python
for x in "banana":
 print(x)
```

output:

```python
b
a
n
a
n
a
```



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



## Python for loop with`else` clause

A `for` loop can have an optional `else` clause. This `else` clause executes after the iteration completes.

```python
digits = [0, 1, 5]

for i in digits:
    print(i)
else:
    print("No items left.")
```

**Output**

```
0
1
5
No items left.
```

Here, the `for` loop prints all the items of the digits list. When the loop finishes, it executes the `else` block and prints `No items left`.

**Example**

Write a program that sums all positive numbers in a list. If the list is empty or contains only non-positive numbers, print "No positive numbers found".

```python
numbers = [0, -1, -2, -3]
total = 0
for number in numbers:
    if number > 0:
        total += number
else:
    if total == 0:
        print("No positive numbers found")
    else:
        print("Sum of positive numbers:", total)
```

output:

```
No positive numbers found
```



✍️**Challenge**: What is the output of the following code?

```python
n = range(4)
 
for num in n:
    print(num - 1)
else:
    print(num)
```



## The break and continue statements

Python provides two special instructions :

- **break** – exits the loop immediately, and unconditionally ends the loop's operation; the program begins to execute the nearest instruction after the loop's body;
- **continue** – behaves as if the program has suddenly reached the end of the body; the next turn is started and the condition expression is tested immediately.

#### **break - example:**

```python
print("The break instruction:") #Prints a message: "The break instruction:"
for i in range(1, 6):     #Starts a loop from 1 to 5, taking each value in this range.
    if i == 3:     # Checks if `i` is 3
        break      # Exits the loop if `i` is 3.
    print("Inside the loop.", i)   # Prints the current value of `i` if it is not 3.
print("Outside the loop.")    # Prints a message after the loop ends.
```

output:

```python
The break instruction:
Inside the loop. 1
Inside the loop. 2
Outside the loop.
```



#### **continue - example:**

```python
print("The continue instruction:")  #Prints a message: "The continue instruction:"
for i in range(1, 6):   #Starts a loop from 1 to 5, taking each value in this range.
    if i == 3:     # Checks if `i` is 3
        continue   # skips the rest of the current loop iteration and go for the next.
    print("Inside the loop.", i)   # Prints the current value of `i` if it is not 3.
print("Outside the loop.")  # Prints a message after the loop ends.
```

output:

```python
The continue instruction:
Inside the loop. 1
Inside the loop. 2
Inside the loop. 4
Inside the loop. 5
Outside the loop.
```



**Example:**

Checks if a list contains the number `5`, If the number `5` is found, print "Found 5". If the loop completes without finding `5`, print "5 not found".

```python
numbers = [1, 2, 3, 4, 6]
for number in numbers:
    if number == 5:
        print("Found 5")
        break
else:
    print("5 not found")  # 5 not found
```



✍️**Challenge:** Write a `for` loop to check if there are no duplicates in a list. If duplicates are found, print "Duplicates found". If no duplicates are found after checking all items, print "No duplicates found". items = ['apple', 'banana', 'cherry', 'apple']



**Example:**

Write a program that prints all numbers from `1` to `10`, skipping the number `5`. After the loop, print "Finished printing numbers."

```python
for i in range(1, 11):
    if i == 5:
        continue
    print(i)
else:
    print("Finished printing numbers.")
```



**✍️Challenge:** Write a `for` loop that counts the number of even numbers in a list. Skip odd numbers and print the count of even numbers at the end.