# Custom Functions

## Level 1

### Sumthings up

Write a simple function called `calculate_sum()` which takes two numbers as input and returns the sum. Call the function `calculate_sum()` with values 3, 4 and print the returned value.

<details>
  <summary>👀 Hint</summary>
  <p>What would you expect this function to "return"</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre>
    <code class="language-python">
    def calculate_sum(num1, num2):
        return num1 + num2
    </code>
    <code class="language-python">
    sum_value = calculate_sum(3,4)
    print(sum_value)
    </code>
    </pre>
</details>

### Summing squares

Consider the following function which implements this formula:

$$
n_1^2 + n_2^2
$$

```python
def sum_squares(num1, num2):
    result =   num1**2 + num2**2
    return result
```

What will be the output of this line of code:

```python
print(sum_squares(3,4) + sum_squares(1,2))
```

<details>
    <summary>✅ Solution</summary>
    <pre>
    25 + 5 = 30
    </pre>
</details>

### f of x

Write a function which helps apply this formula:

$$
f(x) = (x-4)(x+7)
$$

Then, use it to evaluate $f(x)$ for the values of $x$:

- $x = 4$
- $x=-7$
- $x=2$
- $x=-6$

<details>
  <summary>👀 Hint</summary>
  <p>What would you expect this function to "return"</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre>
    <code class="language-python">
       def f_quadratic(x):
            term1 = (x-4)
            term2 = (x+7)
            return term1*term2
    </code>
    <code class="language-python">
        print(f_quadratic(4))  #prints 0
        print(f_quadratic(-7)) #prints 0
        print(f_quadratic(2))  #prints -18
        print(f_quadratic(-6)) #prints -10
    </code>
    </pre>
</details>

### A matter of threes

Write a function which helps apply this formula:

$$
f(x,y) = 3(x+y)
$$

Then, use it to evaluate $f(x,y)$ for the following values:

- $x = 3$ , $y=4$
- $x = 5$ , $y=6$
- $x = 2$ , $y=8$

<details>
  <summary>✅ Solution</summary>
  <pre>
    <code class="language-python">
    def f_plane(x,y):
        return 3*(x+y)
    </code>
    <code class="language-python">
    print(f_plane(3,4))  #21 
    print(f_plane(5,6))  #33
    print(f_plane(2,8))  #30
    </code>
    </pre>
</details>
