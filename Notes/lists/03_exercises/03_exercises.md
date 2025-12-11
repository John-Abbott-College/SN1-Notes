# Lists

## Level 1

### Some Cool Ints

Define a list of 10 integers from 1 to 10 and display the size of the list.

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print(len(numbers))
  </code></pre>
</details>

### Some Cool Names

Define a list of 5 first names and print the list.

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    first_names = ['Sandy', 'Ian', 'Alex', 'Youmna']
  </code></pre>
</details>

### Some Cool Grades

- Prompt the user how many grades they want to enter
- Prompt the user for the grades, one at a time
- Store all the grades in a single list

<details>
  <summary>👀 Hint</summary>
  <p>how do you prompt the user with python?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    grades = []
    n: int = int( input("How many grades do you want to enter? "))

</code>
<code class="language-python">
    for i in range(n):
        grade: float = float( input(f"Enter grade for student {i+1}: "))
        grades.append(grade)

</code></pre>

</details>

### Sumthings going on here

Using the list below, calculate the total sum of each number squared

```py
nums = [1, 7, 2, -3, 5, 9]
```

<details>
  <summary>👀 Hint</summary>
  <p>total = nums₀² + nums₁² + nums₂² + nums₃² + nums₄² + nums₅²</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    total = 0
    for num in nums:
        total += num**2

</code></pre>

</details>

## Level 2

### Studying is for Squares

You're given a list of numbers:

```py
nums = [1, 2, 3, 4, 5, 6, 7]
```

Write a program that creates a new list where each number is replaced by its square, then prints the result:

```py
[1, 4, 9, 16, 25, 36, 49]
```

<details>
  <summary>👀 Hint</summary>
  <p>Use a l🔁🔁p</p>
</details>

### Reverse a List

Reverse a list without using `reverse()`. You're given the following cool list

```py
cool_list = [100, 200, 300, 400, 500]
```

Your goal is to print the reversed version:

```text
[500, 400, 300, 200, 100]
```

<details>
  <summary>👀 Hint</summary>
  <p>There are like 5 valid ways to do it, all of which use a l🔄🔄p</p>
</details>

<details>
  <summary>✅ Solution 1</summary>
  <pre><code class="language-python">
    cool_list = [100, 200, 300, 400, 500]

    start = len(cool_list) - 1
    stop = -1
    step = -1

    reversed_list = []
    for i in range(start, stop, step):
        item = cool_list[i]
        reversed_list.append(item)

    print(reversed_list)

</code></pre>
</details>

<details>
  <summary>✅ Solution 2</summary>
  <pre><code class="language-python">
    cool_list = [100, 200, 300, 400, 500]

    reversed_list = []
    for item in cool_list:
        reversed_list = [item] + reversed_list

    print(reversed_list)

</code></pre>
</details>

### Min / Max

Given the list: 

```py
listo = [8, 2, 15, 1, 9]
```
Write a program that finds and prints the largest and smallest numbers without using `min()` or `max()`. The expected output is:

```text
Largest number: 15
Smallest number: 1
```

<details>
  <summary>👀 Hint</summary>
  <p>How can you keep track of something over the course of a loop?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    listo = [8, 2, 15, 1, 9]

    largest = listo[0] # make a guess
    smallest = listo[0] # make a guess

    for n in listo:
        if n > largest:
            largest = n
        if n < smallest:
            smallest = n

    print(f"Largest number: {largest}")
    print(f"Smallest number: {smallest}")
</code></pre>
</details>

## Level 3

### Chaos Mode

You are giving the following chaotic list

```py
chaos = [42, 67, 'beans', True, 'butter', 64, [], False]
```

Create a new list that contains only the `True` / `False` and print it.

<details>
  <summary>👀 Hint</summary>
  <p>What must our list item be for it to be worthy of being in our new list?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    chaos = [42, 67, "beans", True, "butter", 64, []]

    not_chaos = []

    for item in chaos:
        if item == True or item == False:
            not_chaos.append(item)

    print(not_chaos)
</code></pre>
</details>

### Flat Stanley

You're given a list of lists:

```py
list_of_lists = [[1, 2], [3, 4], [5, 6, 7]]
```

Write a program that flattens this nested list into a single list, then prints it:
```text
[1, 2, 3, 4, 5, 6, 7]
```

<details>
  <summary>👀 Hint</summary>
  <p>l🔁🔁p && .append()</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    list_of_lists = [[1, 2], [3, 4], [5, 6, 7]]

    flat_stanley = []

    for sublist in nested_list:
      for item in sublist:
        flat_stanley.append(item)
    
    print(flat_stanley)
</code></pre>
</details>