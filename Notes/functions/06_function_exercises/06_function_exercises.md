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

## Level 2

### The Average

Consider the following function:

```python
def calculate_average(num1, num2):
	result = (num1+num2)/2
```

_Part 1:_ What will be the output of the following line:

```python
average = calculate_average(3,4)
```

_Part 2:_ Explain the reason for this outcome and propose an improvement.

<details>
  <summary>✅ Solution</summary>
  <pre>
    Part 1: `None`
    
    Part 2: The function doesn't return the average. 
    This is why it evaluates as `None` instead of the expected result. 
    To fix this we should add a return statement
</pre>
</details>

### Fun Circles

Write a simple function called `calculate_area_circle()` which takes the `radius` as an input and returns the area:

$$
A_{circle} = \pi r^2
$$

- Calculate the area of a circle with `radius=2` by using the function defined above.
- Calculate the area of a circle with `radius=9` by using the function defined above.
- Calculate the area of a ring which has an inner circle of radius 4 and an outer circle of radius 6.

<details>
  <summary>👀 Hint</summary>
  <p>What do you need to import for this to work?</p>
</details>

<details>
  <summary>✅ Solution</summary>
  <pre>
<code class="language-python">
        import math

        def calculate_area_circle(radius):
            area = math.pi * (radius**2)
            return area

</code>

<code class="language-python">
    area1 = calculate_area_circle(2)
    area2 = calculate_area_circle(9)
    area_ring = calculate_area_circle(6) -calculate_area_circle(4)
</code>
    </pre>
</details>
