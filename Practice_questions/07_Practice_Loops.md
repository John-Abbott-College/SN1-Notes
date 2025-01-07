# Practice for-loops



**Level 1**

1. Print 5 times "hello" using a `for-loop`

2. Print the values from 0 to 9.

3. What will be the output of this program:

   ```python
   grade = 1
   for _ in range(10):
   	grade+=1
   print(grade)
   ```

4. What will be the output of this program:

   ```python
   value = "m"
   for _ in range(5):
   	value += "m"
   ```

5. What will be the output of this program:

   ```python
   value = ""
   for i in range(5):
   	value += str(i)
   print(value)
   ```

6. What will be the output of this program:

   ```python
   number = 3
   value = 0
   for i in range(4):
       value += number
   print(value)
   ```

   

7. What will be the output of this program:

   ```python
   number = 3
   value = 1
   for i in range(4):
   	value *= number
   print(power)
   ```


**Level 2**

1. Write a Python program that **prints** the powers of 2 from  2^0  to 2^15. Each line should display the exponent and the corresponding power of 2. 

2. Write a program that uses a `for` loop to **print** the first 50 multiples of 5.

3. Create a function which takes in a number `n` and returns the sum of all the integers values:

    <img src="Practice_questions/images_exos/7_1.png"/>

4. Create a function which takes a number `n` and returns the sum of squares of each value:

    <img src="Practice_questions/images_exos/7_1.png"/>

5. Create a function which takes a number `n` and returns the factorial value:

    <img src="Practice_questions/images_exos/7_2.png"/>

    

6. Create a function called `fibonacci()` which takes as input parameter `n` and returns the n-th term of the Fibonacci sequence. It must use a  for loop and not lists nor a while loop. You can also assume that `n` is greater than 0. The sequence is 0, 1, 1, 2, 3, 5, ..., Fn. where

   <img src="Practice_questions/images_exos/7_3.png"/>

   Initial starting values: F0 = 0 and F0 = 1

   


**Level 3:**

1. Consider the following math function $f(x)$ :

   <img src="Practice_questions/images_exos/7_4.png"/>

   

   ​	a) Write a Python function named `f` that accepts `x` as input
   
   parameter and returns the value of f(x) based on the provided formula.

>  Note: We can make exceptions for variable names that are purely mathematical and do not have additional meaning.

​	Let's numerically evaluate the limit where x increases to N which is a large number: 
$$
\lim_{x \to N} f(x)
$$
<img src="Practice_questions/images_exos/7_5.png"/>	

​	b)  Write a function taking as input parameter `N` and and prints the value returned by f(x) for x = 0, 1, 2, 3, 4, .... , N-1	

​	c) Use your function to evaluate this limit numerically with: N = 100, N =1000. Is the solution converging to a number? What is this number?

2. Consider the following series of terms : a_0, a_1, a_2, .... , a_n where each term a_i is evaluated using the previous term $a_{i-1}$ following this relationship:

   <img src="Practice_questions/images_exos/7_6.png"/>

   Starting $a_0 = 1$, create a function which takes as input parameter `n` and evaluates the $a_n$ -th term.

3. When a metal rod is heated, its length increases due to thermal expansion. The expansion is  proportional to both the original length and the temperature increase.

   **Task**: A metal rod starts with a length of 5 meters at 0°C. For every 50°C increase in temperature, its length increases by 0.01 meters. Print the new length of the rod after heating it in intervals of 50°C up to 250°C.



**`break` and `continue` statements**

1. Create a for loop that calculates and prints the cumulative sum of integers from 1 to 100. If the sum becomes divisible by 500, print a special message and break the loop.

2. Write a for loop that checks numbers from 1 to 100, but only prints a number if it is both odd and divisible by 9. Exit the loop when the number 81 is reached.



### Answers:

**Level 1**

1. 

```python
for _ in range(5):
	print("hello")
```

Note: If you are not using the index `i`, you can use `_`  to ignore the values. 

2. 

```python
for i in range(10):
	print(i)
```

3. 11
4. "mmmmmm"
5. "01234"
6. 12
7. 81

**Level 2**

1. 

```python
power = 1
for expo in range(16):
    print("2 to the power of", expo, "is", power)
    power *= 2
```

2. 

   ```python
   for i in range(5, 51, 5):
       print(i)
   ```

   

3. 

```python
def sum_whole_values(n:int):
    total = 0
    for i in range(n):
        total+=i
    return total

print(sum_whole_values(5))
```

3. 

```python
def sum_squares(n:int):
    total = 0
    for i in range(n):
        total += i**2
    return total
print(sum_squares(5))
```

4. 

```python
def factorial(n:int):
    fact = 1
	for i in range(n):
		fact * (i+1)
    return fact
```

Alternative answer:

```python
def factorial(n:int):
	fact = 1
	for i in range(1,n+1):
		fact * i
    return fact
```

5. 

```python
initial_length = 5  # meters
expansion_rate = 0.01  # meters per 50°C

for temperature in range(50, 301, 50):
    new_length = initial_length + (temperature / 50) * expansion_rate
    print(f"At {temperature}°C, the length of the rod is {new_length:.3f} meters")
```

6. 

```python
def fibonacci(n:int)->int:
    a = 0 # represents f_{n-1}
    b = 1 # represents f_{n-2}
    
    c = 0 # intermediate variable to hold a+b while updating a.
    for _ in range(n):
        print(a)  # Print the current term
        c = a + b
        a = b
        b = c  # Update f_n     
    return b # returns the n-th term
```

Alternative answer:

```python
def fibonacci(n:int)->int:
    a = 0 # represents f_{n-1}
    b = 1 # represents f_{n-2}
    for _ in range(n):
        print(a)  # Print the current term
        a, b = b, a + b  # Update # Update f_n
    return b # returns the n-th term
```



**Level 3**

1. a)

```python
def f(x:float)->float:
    numerator = 3*x**2 + 3*x - 5
    denominator = (4*x - 3)*(2*x+1)
    return numerator/denominator
```

1. b)

```python
def limit(N:int) :
    for x in range(N):
        print(f"{x=} : {f(x)=}")
```

1. c) 

```python
limit(1000)
```

**Output:**

```python
x=0 : f(x)=1.6666666666666667
x=1 : f(x)=0.3333333333333333
x=2 : f(x)=0.52
x=3 : f(x)=0.49206349206349204
...
x=994 : f(x)=0.37547120792853017
x=995 : f(x)=0.37547073472567716
x=996 : f(x)=0.3754702624722827
x=997 : f(x)=0.3754697911654922
x=998 : f(x)=0.37546932080246215
x=999 : f(x)=0.37546885138036085
```

- We notice that the function is converging on the value 0.3754 
- This corresponds to the analytical solution $\frac{3}{8}$

2. 

```python
def series(n:int)->float:
    a = 1
    for i in range(n):
        a = 3 * math.sqrt(a)

    return a

```

3. 

```python
initial_length = 5  # meters
expansion_rate = 0.01  # meters per 50°C

for temperature in range(50, 301, 50):
    new_length = initial_length + (temperature / 50) * expansion_rate
    print(f"At {temperature}°C, the length of the rod is {new_length:.3f} meters")
```



**Break and continue**

1. ```python
   total = 0
   for i in range(1, 101):
       total += i
       if total % 500 == 0:
           print("Sum divisible by 500:", total)
           break
   ```

   

2. ```python
   for i in range(1, 101):
       if i == 81:
           break
       if i % 2 != 0 and i % 9 == 0:
           print(i)
   ```

