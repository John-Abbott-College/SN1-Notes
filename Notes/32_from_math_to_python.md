# From Math to Python

Math equations and series look very different when converted to python.

I hope to illustrate some of these translations here.

## Formulas

| Math                             | Python                                                       |
| -------------------------------- | ------------------------------------------------------------ |
| $2x$                             | `2 * x`                                                      |
| $xy$                             | `x * y`                                                      |
| $3(x+y)$                         | `3 * (x + y)`                                                |
| (x-y)(x+7)                       | `(x - y)*(x+7)`                                              |
| $x^2$                            | `x**2`                                                       |
| $x^n$                            | `x**n`                                                       |
| $1\over x$                       | `1/x`                                                        |
| $a\over x+y$                     | `a/(x+y)`                                                    |
| $a/xy$, or $a\over xy$           | `1/(x*y)`                                                    |
| $x \leftarrow x+1$               | `x = x + 1`, or `x += 1`                                     |
| $\sqrt 2$                        | `math.sqrt(2)`                                               |
| $ax^2 + bx + c = 0$              | *non translatable!*                                          |
| $-b \pm \sqrt(b^2 -4ac)\over 2a$ | `-b + math.sqrt(b**2 - 4*a*c)/(2*a)` <br>`-b - math.sqrt(b**2 - 4*a*c)/(2*a)` |

## Math Functions

| Math                     | Python                             |
| ------------------------ | ---------------------------------- |
| $sin(\theta)$            | `math.sin( theta )`                |
| $n \mod(m)$              | `n%m`                              |
| $f(x) = x^2 + 1$         | `def f(x): return x*x + 1`         |
| $f(x,y) = x^2 + y^3$     | `def f(x,y): return x*x + y**3`    |
| $g(f(x)) = 3f(x) + f(x)$ | `def g(f,x): return 3*f(x) + f(x)` |
| $|a-b|$                  | `abs( a-b )`                       |



## Recursive

#### Factorial $n!$


$x_1=1$

$x_2 = 2x_1$

$x_3 = 3x_2$

$...$

$x_n = nx_{n-1}$

If we only want to calculate the Factorial number, and do not care about the intermediate things: then think about this pseudo code first, before coding

$x\leftarrow 1$

$x\leftarrow 1 x$

$x\leftarrow 2 x$

$x\leftarrow 3 x$

$ ...$

$x\leftarrow n x$

From this we can convert to python

```python
def factorial(n):
  x = 1
	for i in range(1,n+1):
    x = i*x
  return x
```





#### Fibonacci



## Series & Products

$$x = \sum_{i=1}^n i^2$$

```python
x = 0
for i in range(1,n+1):
  x = x + i**2
```

---

$x = \sum_{i=0}^{n-1} f(i)$

```python
x = 0
for i in range(n):
  x = x + f(i)
```
---

$(\sum_{i=1}^n a_i )/ n$  

```python
# if a is a list
avg(a)
```

---

$\prod_{i=1}^n f(i)$

```python
x = 1
for i in range(1,n+1):
  x = x * f(i)
```

---

$x = \sum_{i=1}^n a_i$

```python
# assume a is a list of size 'n'
x = sum(a)
```

---

$x = \sum_{i=1}^n a_i$

```python
# assume a is a list with a size larger than 'n'
x = sum(a[:n])
```

---

