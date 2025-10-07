# Practice For Loops

## Level 1

### Ranges

Print 5 times "hello" using a `for-loop`

<details>
  <summary>👀 Hint</summary>
  <p>how do you create ranges?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    for i in range(5):
        print("hello")
  </code></pre>
</details>

### (Fancier) Ranges

Print the values from 1 to 10.

<details>
  <summary>👀 Hint</summary>
  <p>How can you define the start and end of a range?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    for i in range(1, 11):
        print(i)
  </code></pre>
</details>

### Tracing Loops

What will be the output of this program?

```python
grade = 1
for _ in range(10):
	grade+=1
print(grade)
```

<details>
  <summary>👀 Hint</summary>
  <p>What happens when I add 1 to a grade 10 times?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <p>11</p>
</details>

### Tracing MORE Loops

What will be the output of this program:

```python
number = 3
value = 0
for i in range(4):
    value += number
print(value)
```

<details>
  <summary>👀 Hint</summary>
  <p>What happens when I add 3 to a value 4 times?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <p>12</p>
</details>

## Level 2

### You got the Power

Write a program that **prints** the powers of 2 from 2^0 to 2^15. Each line should display the exponent and the corresponding power of 2 in the format:

```text
2 to the power of 0 is 1
2 to the power of 1 is 2
...
2 to the power of 15 is 32768
```

<details>
  <summary>👀 Hint</summary>
  <p>Think about starting with the smallest power, 2^0, and repeatedly multiplying by 2. The base case is the first power, 2^0 = 1.</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    power = 1
    for expo in range(16):
        print(f"2 to the power of {expo} is {power}")
        power *= 2
  </code></pre>
</details>

### That's odd

Print only odd numbers up to 100

<details>
  <summary>👀 Hint</summary>
  <p><b>A number is even if is divisible by 2</b> and to check divisibility, you can use an operator that gives the remainder of a division. Which operator in Python tells you the remainder when dividing by 2?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    for i in range(1, 101):
    if i % 2 != 0:
        print(i)
  </code></pre>
</details>

### Don't Panic

Print only even numbers up to 100. ONLY if the number is divisible by 42 should you print "DON'T PANIC"

<details>
  <summary>👀 Hint</summary>
  <p>How do you check if a number is even? Apply the same idea to test divisibility by 42 👀 </p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    for i in range(100):
        if i % 42 == 0 and i != 0:
            print("DON’T PANIC")
        if i % 42 != 0 and i % 2 == 0:
            print(f"{i} is even")
  </code></pre>
</details>
