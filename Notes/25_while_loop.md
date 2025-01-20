# Loops in Python

Python has two primitive loop commands:

- while loops
- for loops

## The while Loop

 `while` loop in Python is a control flow statement that allows code to be executed repeatedly based on a given condition. The loop continues to execute the block of code as long as the specified condition is `True`. Once the condition becomes `False`, the loop stops.

### 1. While Loop Syntax

```
while condition:
    # body of while loop
```

Here,

1. The `while` loop evaluates **condition**, which is a boolean expression.

2. If the condition is `True`, **body of while loop** is executed. The condition is evaluated again.

3. This process continues until the condition is `False`.

4. Once the condition evaluates to `False`, the loop terminates.

   <img src="Images/while_loop.png" height="400">



> ⚠️ All the rules regarding **indentation** are applicable here, too. We'll show you this soon.



It is now important to remember that:

- if you want to execute **more than one statement inside one while loop**, you must (as with if) **indent** all the instructions in the same way;
- an instruction or set of instructions executed inside the while loop is called the **loop's body**;
- if the condition is False (equal to zero) as early as when it is tested for the first time, the body is not executed even once (note the analogy of not having to do anything if there is nothing to do);
- the body should be able to change the condition's value, because if the condition is True at the beginning, the body might run continuously to infinity – notice that doing a thing usually decreases the number of things to do).

**Example:**

Print `counter`, as long as `counter` is less than 6:

```python
counter = 1
while counter < 6:
    print("Counter:", counter)
    counter += 1
```

**Explanation**:

- The loop starts with `counter` equal to 1.
- The condition `counter < 6` is `True`, so the code block inside the loop is executed, printing "Counter: 1".
- The `counter` is incremented by 1 (`counter += 1`).
- The loop repeats until `counter` is no longer less than 6, at which point the condition becomes `False` and the loop exits.

**output**

```python
Counter: 1
Counter: 2
Counter: 3
Counter: 4
Counter: 5
```



### 2. An infinite loop

An infinite loop, or **endless loop**, occurs when a sequence of instructions in a program repeats without stopping. This happens when the condition controlling the loop never evaluates to `False`, causing the loop to execute indefinitely.

**Example:**

```python
while True:
    print("I'm stuck inside a loop.")
 
```

This loop will infinitely print "I'm stuck inside a loop." on the screen.

> [!TIP]
>
> **When the Number of Iterations is Unknown:**
>
> * Use a `while` loop when the number of iterations isn't known in advance and depends on a condition that changes during execution. For example, you can keep asking a user for valid input until they provide it, with the loop continuing until a specified stop condition is met.

 

**Example:**

Print numbers until the user enters 0

```python
number = int(input('Enter a number: '))  #Asks the user for a number and stores it.

# iterate until the user enters 0

while number != 0:      #Starts a loop that runs as long as the number isn't 0.
    print(f'You entered {number}.')   #Prints the number the user entered.
    number = int(input('Enter a number: '))   #Asks for another number to continue the loop. or 0 to stop 

print('The end.')   #Displays "The end." when the loop finishes.
```

in this example, This Python code repeatedly asks the user to enter a number and prints it until the user enters `0`. When `0` is entered, the loop stops, and the program ends with the message `'The end.'`.

Here’s how the output might look for different inputs:

```python
Enter a number: 5
You entered 5.
Enter a number: 3
You entered 3.
Enter a number: 7
You entered 7.
Enter a number: 0
The end.
```



✍️**Challenge**: Guess the secret number:

- Prompt the user to enter an integer.

- Use a `while` loop to repeatedly ask for a number.

- If the entered number does not match the secret number, display the message "Ha ha! You're stuck in my loop!" and ask for another number.

- When the user correctly guesses the secret number, print it on the screen and the message: "Well done, muggle! You are free now."

  

### 3. The else Statement

In Python, a `while` loop can have an optional `else` clause - that is executed once the loop condition is `False`. 

```python
counter = 0   #initializes a variable counter with a value of 0.

while counter  <  2:  # a while loop that runs as long as counter is less than 2.
    print('This is inside loop')  #"This is inside loop
    counter = counter + 1   # counter is incremented by 1
    
else:    # The else runs after the while loop ends when counter reaches 2 prentong the following statement
    print('This is inside else block')   # This is inside else block."
```

output:

```python
This is inside loop
This is inside loop
This is inside else block
```

Here, on the third iteration, the `counter` becomes **2** which terminates the loop. It then executes the `else` block and prints `This is inside else block`.

> ⚠️ The `else` block will not execute if the `while` loop is terminated by a `break` statement.



### 4. Python break and continue

In programming, the `break` and `continue` statements are used to alter the flow of loops:

- `break` exits the loop entirely
- `continue` skips the current iteration and proceeds to the next one

------

#### 4.1 Python break Statement

The `break` statement terminates the loop immediately when it's encountered. <img src="Images/while_break.png" height="400">

We can use the `break` statement with the `while` loop to terminate the loop when a certain condition is met. 

**Example:**

Exit the loop when  `counter`  is 3:

```python
counter = 0
while counter < 6:
    counter += 1
    if counter == 3:   # If this condition is True, the next line (break) will execute.
        break            # immediately exits the loop, even if the loop condition (i < 6) is still True.
    print(counter)
```

output:

```python
1
2
```

**Explanation:**

- The loop starts with `counter = 0` , incremented by `1` , and prints `1`.
- Then  `counter` is incremented to `2`, and the loop prints `2`.
- When `counter` becomes `3`, the loop prints `3`, hits the `break` statement, and exits the loop immediately.

**Example:**

Write a Python program that asks the user to enter a password. The program should allow up to 3 attempts for the user to input the correct password. the program prints "Access granted!" and stop, if the password is correct. If the user fails to enter the correct password after 3 attempts, the program prints "Too many failed attempts. Access denied." 

```python
attempts = 0
password = "open_sesame"

while attempts < 3:
    guess = input("Enter the password: ")
    if guess == password:
        print("Access granted!")
        break
    else:
        print("Incorrect password, try again.")
    attempts += 1
else:
    print("Too many failed attempts. Access denied.")
```



✍️**Challenge**: guess the word

Design a program that uses a while loop and continuously asks the user to enter a word unless the user enters "teacher" as the secret exit word, in which case the message "You've successfully left the loop." should be printed to the screen, and the loop should terminate.



#### 4.2 The continue Statement

The `continue` statement in a `while` loop causes the program to skip the remaining code inside the loop for the current iteration and jump directly to the next iteration. 

It essentially tells the loop to immediately go back to the condition check and continue with the next cycle, bypassing any code that follows the `continue` statement within that loop.

<img src="Images/while_cont.png" height="400">

**Example:**

Continue to the next iteration if `counter` is 3:

```python
counter = 0
while counter < 6:
   counter += 1     # In each iteration of the loop, the value of counter is incremented by 1.
   if counter == 3:   # The program checks if the counter is equal to 3, the continue statement is executed.
        continue #The program skips the rest of this iteration and moves to the next iteration.
   print(counter)
 
```

output:

```
1
2
4
5
6
```

The number `3` is skipped and not printed because of the `continue` statement.

**Example:**

Write a Python program that uses a `while` loop to print numbers from 1 to 10, skipping 3 and its multiples. After the loop finishes, print a message stating "Finished printing numbers."

```python
num = 1
while num <= 10:
    if num % 3 == 0:
        num += 1
        continue
    print(num)
    num += 1
else:
    print("Finished printing numbers.")
```



✍️**Challenge**: The Ugly Vowel Eater

- ask the user to enter a word;
- use conditional execution and the continue statement to "eat" the following vowels *A*, *E*, *I*, *O*, *U* from the inputted word;
- print the uneaten letters to the screen, each one of them on a separate line.