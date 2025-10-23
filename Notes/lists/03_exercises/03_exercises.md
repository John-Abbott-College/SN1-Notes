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
