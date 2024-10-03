## Assignment operators and variables

1. True or False, the following program contains a `SyntaxError` :

```python
value = 2
value = value + 3
```

2. True or False, the following program contains a `SyntaxError` :

```python
value = 4
value2 = value+=2
```

3. True or False, the following program contains a `SyntaxError`:

```python
value = 10
print(value-=1)
```

4. True or False, the following program contains a `SyntaxError`:

```python
value1 = 34
value2 = 44
value1+=value2
```

5. What is the output of the following program:

```python
num1 = 23
num2 = 45
num3 = "234"
num1 += 1
num2 -= num1
num3 += str(num1)
num3 += str(num2)
num2 = num2 * 2
print(num1, num2, num3)
```

6. What is the output of the following program:

```python
a = 15
b = 15
s = "111"

a = b//a
b = b % 4

s += "1"
a = b / a

print(a, type(a))
print(b, type(b))
print(s, type(s))
```





7. Which of the following variable names are **illegal**?

   - `TRUE`

   - `True`

   - `true`

## **Answers:**

1. False
2. True, cannot use two assignment operators (= and +=) in the same expression. This should be done on two separate lines.
3. True, cannot print and assignment expression. This should be done on two separate lines.
4. False
5. 24 42 "2342421"
6. 

   3.0  `float`
    3    `int`
    1111 `str`

7. `True`, reserved keyword for Boolean type
