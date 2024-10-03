# Python for loop with`else` clause

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

