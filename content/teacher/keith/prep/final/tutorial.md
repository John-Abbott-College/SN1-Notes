## Problem Solving

### Goal: Review strategy for solving problems

After carefully reading the problem statement, ask yourself:

#### How would I solve the problem?
- Write down your understanding of what you're being asked and the logic/approach of how you'll solve it. Don't write it as Python yet, but think about the tools you've learned (if/conditions, loops, lists, calculations, functions) to structure your approach.
- Translate your approach into Python. Use the reference sheet to validate that you're using the correct syntax for Python.

#### Was I given an example of input values and expected output for the program?
- YES:
    Verify that the expected output makes sense for the given values. If not, then maybe your understanding of the problem was not quite correct so question your assumptions/understanding. Raise your hand and ask for clarification if you are making assumptions due to something not being clear on the test.

#### Was I told to write a function?
- YES: 
    - What should the function be named?
    - What inputs (i.e. **parameters**) should the function use?
    - Are any of the parameters **lists**?
        - YES:
            - 99% chance that a for-loop of some kind will be needed inside your function
    - Is the function supposed to **print** anything?
        - YES:
            - then print whatever is needed
        - NO:
            - then DO NOT print!
    - Is the function supposed to **return** something?
        - YES:
            - Make sure you use a return statement somewhere and remember that the function will stop right after it actually does a return.
            - If you need to return a list, then make sure you **create** the list before you .append/.insert items into the list
        - NO:
            - Either do not put any return statement, or put a return with no value if you want to exit your function at a certain point.
- NO: 
    - Don't write a function then!
    - Create/use variables as needed 

#### Does the problem require the person running the program to enter some data each time the program runs?
- YES:
    - use input()
- NO:
    - Then there is absolutely no reason to use input() !!!!!

<div style="page-break-after: always;"></div>

## Functions 1

### Goal: Figure out whether parameter names must match other parts of the program

#### Step 1
Write a function called my_function1 that has a parameter named **apple**. Inside the function, print the value of the parameter, and do not return anything.

#### Step 2
Add the following code after your function:

```python

apple = "John Abbott"
my_function1(apple)
```

#### Step 3
Run your program and observe that it works (i.e. you see "John Abbott" printed)

#### Step 4
Change the name of the parameter in my_function to **school**. (Update your print statement accordingly.)

#### Step 5
Run your program and observe that it works (i.e. you see "John Abbott" printed)

#### Step 6
Add one more line at the very end of your program:
```python
my_function1("Not even a variable!")
```

#### Step 7
Run your program and observe that after John Abbott, it also prints "Not even a variable!"

### Analysis
Does the name of the parameter in the function need to match anything in the rest of the program?

<div style="page-break-after: always;"></div>

## Functions 2

### Goal: Understand variables inside and outside of functions

Given this code:
```python
my_name = "James"

def my_function2(my_name):
    print(my_name)

    my_name = "Bond"
    print(my_name)


my_function2("Alice")       # A
print(my_name)              # B
my_function2(my_name)       # C
print(my_name)              # D
```

### Analysis

Write down the output you expect to see from each of these 4 steps, then type in and run the above program to validate your understanding. If any of the actual outputs differ from your expectation, then why?

| Step | Expected Output          | Actual Output                 |
|------|--------------------------|-------------------------------|
| A    | (2 things get printed):| |
| B    | | |
| C    | (2 things get printed):| |
| D    | | |
|     | ______________________________________________________ | _________________________________________________________ |

<div style="page-break-after: always;"></div>

## Loops 1

### Goal: Compare different types of loops

Given this list of cities (yes - London should be added twice):
```python
cities = ["Montreal", "Toronto", "London", "London", "Paris"]
```

#### Indexed Loop
Write a function called loop1 that prints all of the cities from the list given to it using a for-loop with an index and range like:

```python
for i in range(...):
```

Remember to add some code to call (use) your loop1 function.

#### Direct Loop
Write a function called loop2 that prints all of the cities from the list given to it using a for-loop that directly gives you values like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called loop3 that prints all of the cities from the list given to it using a for-loop with enumerate like:

```python
for i, num in enumerate(numbers):
```


### Analysis
- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them?

<div style="page-break-after: always;"></div>

## Loops 2

### Goal: Compare different types of loops

Given this list of cities (yes - London should be added twice):
```python
cities = ["Montreal", "Toronto", "London", "London", "Paris"]
```

#### Indexed Loop
Write a function called check1 that takes in a list of values and returns True if there are two identical adjacent items in the list, and False otherwise. Use an indexed loop like:

```python
for i in range(...):
```

Remember to add some code to call (use) your loop2 function.

#### Direct Loop
Write a function called check2 that takes in a list of values and returns True if there are two identical adjacent items in the list, and False otherwise. Use a direct loop like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called check3 that takes in a list of values and returns True if there are two identical adjacent items in the list, and False otherwise. Use an loop wih enumerate like:

```python
for i, num in enumerate(numbers):
```


### Analysis
- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them?

<div style="page-break-after: always;"></div>

## Loops 3

### Goal: Compare different types of loops

Given these two lists of numbers:
```python
nums1 = [2, 2, 4]
nums2 = [9, 9]
```

#### Indexed Loop
Write a function called same1 that takes in a list of values and returns True if all items in the list are identical, and False otherwise. Use an indexed loop like:

```python
for i in range(...):
```

Remember to add some code to call (use) your same1 function.

#### Direct Loop
Write a function called same2 that takes in a list of values and returns True if all items in the list are identical, and False otherwise. Use a direct loop like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called same3 that takes in a list of values and returns True if all items in the list are identical, and False otherwise. Use a loop wih enumerate like:

```python
for i, num in enumerate(numbers):
```


### Analysis
- Write down the expected results, then run each of your 3 functions twice (once with nums1 and once with nums2) and check your results:

| Function | nums1 Expected | nums1 Actual | nums2 Expected | nums2 Actual |
|----------|----------------|--------------|----------------|--------------|
| same1    |                |              |                |              |
| same2    |                |              |                |              |
| same3    |                |              |                |              |

- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them?

<div style="page-break-after: always;"></div>

## Loops 4

### Goal: Compare different types of loops

Given this list of cities (yes - London should be added twice):
```python
cities = ["Montreal", "Toronto", "London", "London", "Paris"]
distance = [0, 505, 5237, 5237, 5520]
```

#### Indexed Loop
Write a function called distance1 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use an indexed loop like:

```python
for i in range(...):
```

Remember to add some code to call (use) your distance1 function.

#### Direct Loop
Write a function called distance2 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a direct loop like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called distance3 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a loop wih enumerate like:

```python
for i, num in enumerate(numbers):
```

#### Zip Loop
Write a function called distance4 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a loop wih zip like:

```python
for a, b in zip(list_a, list_b):
```


### Analysis
- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them for this problem?

<div style="page-break-after: always;"></div>

## Loops 5

### Goal: Compare different types of loops

Given this list of ages:
```python
ages = [12, 34, 2, 43, 18, 16, 20, 83, 23, 12, 22, 11, 12, 13, 19, 51]
```

#### Indexed Loop
Write a function called skip1 that takes in a list of numbers and prints the every 3rd number. Your function must work for any length of list. Use an indexed loop like:

```python
for i in range(...):
```

Remember to add some code to call (use) your skip1 function.

#### Direct Loop
Write a function called skip2 that takes in a list of numbers and prints the every 3rd number. Your function must work for any length of list. Use a direct loop like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called skip3 that takes in a list of numbers and prints the every 3rd number. Your function must work for any length of list. Use a loop wih enumerate like:

```python
for i, num in enumerate(numbers):
```

### Analysis
- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them?

