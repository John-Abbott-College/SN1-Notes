## Priority of operators

You probably remember from you mathematics classes that there exists a hierarchy of priorities when evaluating a math expression. For example, a multiplication is evaluated before the addition in the following expression: 
$$
3 * 2 + 4 = (3*2) + 4 
$$
The operation (3 * 2) should be evaluated first, then 4 is added to the result. 

Python defines very precisely the priorities of all operators and you should be aware of this when writing code.

| Level of Priority | Category       | Operators                     |
| ----------------- | -------------- | ----------------------------- |
| (6) Highest       | Exponent       | `**`                          |
| 5                 | Multiplication | `*`, `/`, `//`, `%`           |
| 4                 | Addition       | `+`, `-`                      |
| 3                 | Comparison     | `==`, `!=`, `<=`,`>=`,`>`,`<` |
| 2                 | Logical Unary  | `not`                         |
| 1                 | Logical Binary | `and` ,`or`                   |

**Importance of using parathesis**

When writing scripts to process data, formulas and equations can become lengthy and difficult to read. To enhance the readability of your code, it's advisable to use parentheses e.g: `(2+4)**3` to clearly define the order of operations. Additionally, using variables can help make the code more understandable and easier to follow.

✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 

1. Arithmetic and comparison

```python
print(3*4**2 + 10*2 >= 23 - 4**2)
```

2. Arithmetics, comparison and `or`

```python
print((34 == 34%5*7) or (52 == 8**2/2 + 4*5))
```

3. Comparison with strings

```python
name = "Joshua"
age = 20
print(name != "Stephen" and age >=19 )
```



✍️**Challenge**: Joshua is using Python to calculate his current average in computer science in percent. Here are his grades so far:

- 18/20 in an assignment worth 15%
- 15.5/20 in the test worth 20%
- 5/5 on a homework worth 2%

He has not yet learned about the priority of operations and does not understand where the mistake is in his script. Add parentheses where needed to correct his mistake.

```python
assignment_grade = 18 / 20 * 15
test_grade = 15.5 / 20 * 20
homework_grade = 5 / 5 * 2

my_grade = 100 * assignment_grade + test_grade + homework_grade / 15 + 20 + 2
print(my_grade)
```

