# Operators



**Operators**: Similarly to mathematics, the `+`, `-`, `*`, `/` are operators used to perform operations on their operands i.e. the numbers on which the operation is to be done. In programming, these are called arithmetic operators and there are other types of operators such as the comparison operators and the logical operators. 



**Arithmetic operators**

- **Addition  `+`:** 
  - On numeric literals performs a mathematical addition (e.g: `3+2` , result `5`)
  - On string literals, concatenates them (e.g.: `"Hi " + "Charlie"`, result: `"Hi Charlie"` )

- **Subtraction `-` :**
  - On numeric literals performs a mathematical Subtraction   (e.g: `3-2` , result `1`)

- **Multiplication *`:**
  - On numeric literals performs a mathematical Multiplication     (e.g: `3*2` , result `6`)

- **Division  `/`:**

  - On numeric literals performs a mathematical division    (e.g: `3/2` , result `1.5`)

- **Modulus `%`:**

  - On numeric literals returns the remainder when the first operand is divided by the second (e.g.: `4%2`, result `0`, `4%3`, result `1`)

- **Exponentiation `**`:**

  - Raises the first operator to the power of the second operator (e.g.: `4**2`, result :`16` )

- **Floor division `//`:**

  - Divides the first operand by the second and rounds the result down to the nearest while number. 

    

**Comparison operators**:

The comparison operators ask questions about the operands. *Are these two values equal?* *Is the first value greater than this second value?* The result is not a number as it is the case for arithmetic operators, but rather a Boolean: `True` or `False`.

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



**Assignment operator**

Assignment operators are only applicable to variables unlike mathematics. For instance, in math 5 + 3 = 8 is a correct **statement**. But in Python, running `5 +3 = 8` will cause an error. This is because the `=` operator in programming is an **action** not a statement as it tries to set a new value (`8`) to whatever is on the right hand side (`5 +3`) which is a literal that cannot be re-defined.

There exist much more assignment operators, but we will only focus on the following ones:

- **Assignment** `=`:

  - Assigns a value to a variable (e.g.: `name = "Julie"` , result: assigns the value `"Julie`" to the variable `name`)

    > ⚠️ This operator does not have the same definition as in math. In math and algebra, = is a **statement** used to communicate that two values are equal as in 5+3 = 8. In Python, `=` is an **action**, it sets the value of a variable. `5 + 3 =8` would cause a syntax error in Python because you cannot reassign the value of a literal. 

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

    



**Logical operators**

The operands of logical operators are Booleans  (i.e.: `True` or `False` expressions or variables)

- `and`:
  - Returns `True` if both operands are `True`, otherwise returns `False`
  - `(3>2) and (4<5)`, result: `True`
  - `(3>2) and (4 == 5)`, result: `False`
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



**Advanced operators (will be seen later)**

- `is`
- `is not`
- `in`
- `not in`



**Priority of operators**
