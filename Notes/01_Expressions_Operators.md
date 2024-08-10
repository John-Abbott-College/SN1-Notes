# Operators



**Operators**: Similarly to mathematics, the `+`, `-`, `*`, `/` are operators used to perform arithmetic operations on numbers. In Python, complications may arise if you combine literals of different types. 

Let's remind that there are three types of numeric literals and one type for strings in Python:

**Numeric** 

- `int `
- `float`
- `complex` (Imaginary numbers are not covered in this course)

**Text**

- `string` 

**Boolean**

- `bool`



## Arithmetic operators

To use arithmetic operators you firstly need to understand what happens when you combine different numeric types. Any `int` value e.g.: `10` has a `float` equivalent e.g.: `10.0`. You can convert an integer into a float by using the constructor `float(10)` and passing the integer as an argument. Likewise, you can convert a `float` into an int `int(3.14)`. You must be aware that this will truncate the decimal part of the `float` number, the resulting `int` is `3`.  Therefore, you must be careful when performing those conversion because this might result in loosing precision or loosing information. We say that `float`s are **wider** range than `int`or `int` are **narrower** than floats. 

Although extremely rare, arithmetic operations with the `bool` type are possible in Python. To convert a `bool` into an integer or a float, you can also use the `int(True)` or `float(True)` constructors.  A Boolean value of `True` translates into the value `1` (or `1.0` ) and  `False` translates into `0` (or into `0.0` ). If you perform an addition of two `bool`, for example `True + True`, Python will convert each `bool` into the next wider type, in this case `int`, and perform the operation (`1+1 = 2`). If it's a more complex operation, for example `False / True`, the values will be converted to `float`, therefore the result will be `0.0 / 1.0 = 0.0`

In summary, when performing an arithmetic operation, the numbers will be converted to a **wider** type to ensure the operation is performed without losing information.

- **Addition  `+`:** 
  
  - If combining two`int`, this operator performs an addition and returns the result as an `int` : (e.g.: `3 + 2`,  result:` 5`)
  - If combining two `float`, this operator performs an addition and returns the result as a `float` (e.g.: `3.2 + 2.5`,  result:` 5.7`)
  - If combining an `int` and a `float`, this operation will convert the `int` into a float, performs a mathematical addition and returns the result as a `float` (e.g: `3.0 + 2` , result `5.0`)
  - On string literals, this operator concatenates the two strings (e.g.: `"Hi " + "Charlie"`, result: `"Hi Charlie"` )
  
- **Subtraction `-` :**
  - If combining two`int`, this operator performs a mathematical subtraction and returns the result as an `int` : (e.g.: `3 - 2`,  result:` 1`)
  - If combining two `float` or a `float` with an `int`, this operator performs a mathematical subtraction and returns the result as a `float` (e.g.: `3.2 - 2,  result:` 0.7`)
  - This operator doesn't apply to string literals and will cause an error if used on strings.
  
- **Multiplication *`:**
  
  - If combining two`int`, this operator performs a mathematical multiplication and returns the result as an `int` : (e.g.: `3 * 2`,  result:` 6`)
  - If combining two `float` or a `float` with an `int`,this operator performs a mathematical multiplication and returns the result as a `float` (e.g.: `3.5 * 2`,  result: ` 7.0`)
  - This operator doesn't apply to string literals and will cause an error if used on strings.
  
- **Division  `/`:**

  - If combining any two real numbers (`float` or `int`), this operator always converts them into `float`, performs a mathematical division and returns the result as a `float`  (e.g: `3/2` , result `1.5`, `4/2`, result: `2.0`)
  - Similar to mathematics, division by zero will cause an error. Your program needs to handle this situation, especially if the denominator is a variable that might become zero.
  - This operator doesn't apply to string literals and will cause an error if used on strings.

- **Modulus `%`:**

  - To grasp this operator, it's essential to recall what a division remainder is. Consider the following division:
    $$
    7/5 = 1.4  = 1 + 2/5
    $$

    - Quotient: 1 
    - Remainder: 2 

  - The **modulus** operation returns the remainder of a long division (e.g. `7 % 5 = 2`). If is an easy way to verify if a number is divisible by another number (remainder is 0).

  - If performing this operation with two `int`, the result will be an `int` 

  - If performing this operation with two `float`, the result will be a `float` (e.g.: `7.0 % 5.0 = 2.0`)

  - If performing this operation with an `int` and a `float`, the int is automatically converted into the wider type `float` and the result is a `float`.

  - This operator doesn't apply to string literals and will cause an error if used on strings.

- **Floor division `//`:**

  - Divides the first operand by the second and rounds the result down to the nearest whole number. 
  - If two `int` are used in this operation, the result is and `int`
  - If any of the number is a `float`, the result will be a `float` and any integer will automatically be converted to the wider type `float`.
  - This operator doesn't apply to string literals and will cause an error if used on strings.

- **Exponentiation `**`:**

  - Raises the first operator to the power of the second operator (e.g.: `4**2`, result :`16` )
  - Doesn't exist for string literals and will cause an error.

  



✍️**Challenge**: Manually execute the operations of the program below and write the expected result. 
<div style="text-align: right;">     
    <a href="https://app.codeboot.org/5.0.0/?init=.fYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.~lang=py-novice.~showLineNumbers=true.a">         
    <button style="border: none; background-color: transparent;">
      <img src="Images/codeboot-button.png" alt="CodeBoot Button" style="vertical-align: middle;" height=50>
      <span>Verify the answer in code boot</span>
    </button>     
    </a> 
</div>
```python
w = 2
x = 10.0
y = 7

a = w + y
b = y - w
c = 10 % 7
d = y // w
e = y ** w
f = w * x
g = y / x
print(a,b,c,d,e,f,g)
```


✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 

```python
a = 9
b = 4
c = 5
x = a % b
y = a // c
print(x, y)
```

```python
a = 5.5
b = 5

x = a % b
y = a // b
print(x, y)
```

```python
a = -7
b = -4
x = a % b
y = (a + b) // b
print(x, y)
```



## Assignment operator

Assignment operators are used to set the value of a variable, unlike mathematics. For instance, in math 5 + 3 = 8 is a correct **statement**. However in Python, executing`5 + 3 = 8` will cause a syntax error. This is because the `=` operator is not used for arithmetic operations or equality. In programming, `5 + 3` is an expression that cannot be reassigned. Python expects the left hand side of the equality to be a variable.

There exists much more assignment operators, but we will only focus on the following ones:

- **Assignment** `=`:

  - Assigns a value to a variable (e.g.: `name = "Julie"` , result: assigns the value `"Julie`" to the variable `name`)

    > ⚠️ This operator does not have the same definition as in math. In math and algebra, = is a **statement** used to communicate that two values are equal as in 5+3 = 8. In Python, `=` is an **assignment**, it sets the value of a variable. `5 + 3 = 8` would cause a syntax error in Python because you cannot reassign the value of a literal or an expression. 

- **Addition assignment** `+=`

  - Performs an addition (numeric addition or string concatenation) on the two operands and **assigns** the result to the left operand. 

  - ```python
    value = 6
    value += 2
    print(value) # output: 8
    ```

  - ```python
    name = "Emma"
    name += "Watson"
    print(name) # output: "EmmaWatson"
    ```

    

- **Subtraction assignment `-=`**

  - Performs a subtraction on the two operands and **assigns** the result to the left operand. 

  - ```python
    value = 6
    value -= 2
    print(value) # output: 4
    ```

- **Multiplication assignment `*=`**

  - Performs a multiplication on the two operands and **assigns** the result to the left operand. 

  - ```python
    value = 6
    value *= 2
    print(value) # output: 12
    ```

    

- **Division assignment `/=`**

  - Performs a division on the two operands and **assigns** the result to the left operand. 

  - ```python
    value = 6
    value /= 2
    print(value) # output: 3
    ```




✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 

```python
day = 1
temperature  = 25.0
print(temperature)
day+=1
temperature -= 5.0
print(temperature)
day+=1
temperature = 23.5
print(temperature)
day+=1
temperature += 2.5
print(temperature)
day+=1
temperature -= 5.0
print(temperature)
day+=1
temperature /= 2
print(temperature)
day+=1
temperature *= 3

print("The weather in Canada is nuts...")
print(day, temperature)
```



## Comparison operators

The comparison operators are used to determine how two values compare to eachother : *Are these two values equal?* *Is the first value greater than this second value?* *Is the first value less than or equal to the second value?* The result is a Boolean: `True` or `False`.

For instance, `1==1` returns `True` while `1==0` is `False`. 

Why use such operators? Sometimes, the operands are not easy to determine or consist of expressions that are harder to evaluate. For instance the line below:

```python
((3 * 4) + (5 ** 2)) == ((2 * 9) + (7 * 3))
```



- **Equality operator** `==` 

  - The double equal operator`==` compares two operands, if they are equal the result is `True` otherwise the result is `False`. For instance, `1==1` is `True`, `1==0` is `False`. 

  - You may also use this operator on string literals: `"Hello"` == `"World"` ( this is `False`).

    

- **Inequality operator !=** 
  - Returns `True` if the operands are not equal and `False` if they are equal 
  
  - (e.g.: `1 != 2` , result: `True`, `1 != 1`, result: `False` )
  
    
  
- **Greater than `>`** 
  - Return `True` if the left side operand is greater than the right side operand. Returns `False` otherwise.
  - e.g.: `3 >2 ` result: `True` , `3 > 6`, result: `False`
  
- **Greater than or equal `>=`**
  - Return `True` if the left side operand is greater or equal than the right side operand. Returns `False` otherwise.
  - e.g.: `3 >= 2 ` result: `True` , `3 >= 3`, result: `True`
  
- **Less than `<`**
  - Return `True` if the left side operand is less than the right side operand. Returns `False` otherwise.
  - e.g.: `3 < 6 ` result: `True` , `3 < 2`, result: `False`
  
- **Less than or equal** `<=`
  - Return `True` if the left side operand is less or equal than the right side operand. Returns `False` otherwise.
  - e.g.: `3 <= 3 ` result: `True` , `3 <= 2`, result: `False`



✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 

```python
a = 11.999
b = 12
print(a < b)
```

```python
a = (30 / 6) + 3
b = 2**3
print(a == b)
```

```python
a = (25 // 10) * 10 
b = 4**2 + 4
print(a != b)
```

```python
a = 10
b = 7**2 +1
print(a >= b)
```



## Logical operators



Logical operators are used to combine `bool` values (`True` or `False`).  They are helpful when programming decision making or creating more complex algorithms. We will learn more about conditional statements. 

- `and`:
  - Returns `True` if both operands are `True`, otherwise returns `False`
  - `(3 > 2) and (4 < 5)`, result: `True`
  - `(3 > 2) and (4 == 5)`, result: `False`
  - `(3 != 3) and (4 ==5)`, result: `False`
- `or`
  - Returns `True` if at least one operand is`True`, otherwise returns `False`
  - `(3>2) or (4<5)`, result: `True`
  - `(3>2) or(4 == 5)`, result: `True`
  - `(3 != 3) or (4 ==5)`, result: `False`
- `not`
  - Returns `True` if the operand is `False`. Otherwise returns `False`. (It simply flips the Boolean)
  - `not (3>2)`, result: `False`
  - `not (4 == 5)`, result: `True`
  - `not (3 != 3)`, result: `True`



✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 

```python
year = 2024
time_to_next_olympiad  = year % 4
is_summer_olympics = (time_to_next_olympiad == 0)
is_winter_olympics = (time_to_next_olympiad == 2)  and ((year % 2) == 0)
print("True or False, this year is an olympic Games year?")
print(is_summer_olympics or is_winter_olympics)
```

> *The last Summer and Winter Games held in the same year were in Barcelona (Summer) and Albertville (Winter) in 1992. Since then, the Summer and Winter Games are each still held every four years but the Summer Games are celebrated during the first year of an Olympiad and the Winter Games held in the third year.* Source: [International Olympic Committee](https://olympics.com/ioc/faq/history-and-origin-of-the-games/since-when-have-the-summer-and-winter-games-no-longer-been-held-in-the-same-year) algorithm.



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

