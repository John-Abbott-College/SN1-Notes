

# Arithmetic operators



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



### Combining narrow and wider types

To use arithmetic operators you firstly need to understand what happens when you combine different numeric types. 

**Integers to Floats**

- Any `int` value e.g.: `10` has a `float` equivalent e.g.: `10.0`. 

- You can convert an integer into a float by using the constructor, e.g: `float(10)` 

- Likewise, you can convert a `float` into an integer using `int(3.14)`

  ⚠️ **Note:**  This will truncate the decimal part of the `float` number, the resulting `int` is `3`.  Therefore, you must be careful when performing those conversion because this might result in loosing precision or loosing information. We say that `float`s are **wider** range than `int`or `int` are **narrower** than floats. 

**Boolean to integers or floats**

Although extremely rare, arithmetic operations with the `bool` type are possible in Python. 

- To convert a `bool` into an integer or a float, you can also use the `int(True)` or `float(True)` constructors. 
- A Boolean value of `True` translates into the value `1` (or `1.0` ) and  `False` translates into `0` (or into `0.0` ). 
- If you perform an addition of two `bool`, for example `True + True`, Python will convert each `bool` into the next wider type, in this case `int`, and perform the operation (`1+1 = 2`). If it's a more complex operation, for example `False / True`, the values will be converted to `float`, therefore the result will be `0.0 / 1.0 = 0.0`

In summary, when performing an arithmetic operation, the numbers will be converted to a **wider** type to ensure the operation is performed without losing information.



## Arithmetic operators



| Operator | Description                                                  | `string` with `string`                                     | `int` with `int`                  | `float` with `float`                   | `int` with `float`                   |
| -------- | ------------------------------------------------------------ | ---------------------------------------------------------- | --------------------------------- | -------------------------------------- | ------------------------------------ |
| `+`      | mathematical addition                                        | `"Hi " + "Charlie"`, result: `"Hi Charlie"` (`string`)     | `3 + 2`,  result:` 5` (`int`)     | `3.2 + 2.5`,  result:` 5.7` (`float`)  | `3.0 + 2` , result `5.0` (`float`)   |
| `-`      | mathematical subtraction                                     | Doesn't exist for string literals and will cause an error. | `3 - 2`,  result:` 1` (`int`)     | `3.2 - 2.0,  result:` `0.7 (float)`    | `3.0 - 2` , result `1.0` (`float`)   |
| `*`      | mathematical multiplication                                  | Doesn't exist for string literals and will cause an error. | `3 * 2`,  result:` 6` (`int`)     | `3.5 * 2.0`,  result: ` 7.0` (`float`) | `3.0 * 2`,  result: ` 6.0` (`float`) |
| `/`      | mathematical division                                        | Doesn't exist for string literals and will cause an error. | `3 / 2`,  result:` 1.5` (`float`) | `3.0 / 2.0`,  result:` 1.5` (`float`)  | `3.0 / 2,  result:` 1.5` (`float`)   |
| `//`     | Divides the first operand by the second and rounds the result down to the nearest whole number. | Doesn't exist for string literals and will cause an error. | `3//2`, result: `1` (`int`)       | `4.0//3.0`, result: `1.0` (`float`)    | `4.0//2`, result: `1.0` (`float`)    |
| `%`      | Returns the remainder of the long division of the first operand by the second operand. | Doesn't exist for string literals and will cause an error. | `10 % 7`, result: `3` (`int`)     | `7.0 % 5.0`, result: `2.0` (`float`)   | `7.0 % 5, result: `2.0` (`float`)    |
| `**`     | Raises the first operator to the power of the second operator | Doesn't exist for string literals and will cause an error. | `4**2`, result :`16`(`int`)       | `4.0**2.0`, result :`16.0`(`float`)    | `4**2.0`, result :`16.0`(`float`)    |

#### Modulus `%`

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

#### Floor division `//`

- Divides the first operand by the second and rounds the result down to the nearest whole number. 
- If two `int` are used in this operation, the result is and `int`
- If any of the number is a `float`, the result will be a `float` and any integer will automatically be converted to the wider type `float`.
- This operator doesn't apply to string literals and will cause an error if used on strings.





✍️**Challenge**: Manually execute the operations of the program below and write the expected result.  Check your answers by running the code. 

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.fYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.~lang=py-novice.~showLineNumbers=true.a">         
    <button class="codeboot-button">
      <span>Check answer</span>
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



✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by running the code. 

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.fYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.~lang=py-novice.~showLineNumbers=true.a">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>

```python
a = 9
b = 4
c = 5
x = a % b
y = a // c
print(x, y)
```



<div class="button-container">     
    <a href=https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.fYXJpdGhtZXRpY3MzLnB5~XQAAgAAvAAAAAAAAAAAwiAOiEYBKyZe2I4QdWm7UXFjOvyviV84ZJSWiNp-9cEcuUekImN8jtfnmf3_4HMgA.oYXJpdGhtZXRpY3MyLTItMi5weQ==~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.~lang=py-novice.~showLineNumbers=true.a>         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>


```python
a = 5.5
b = 5

x = a % b
y = a // b
print(x, y)
```



<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXJpdGhtZXRpY3MzLnB5~XQAAgAAvAAAAAAAAAAAwiAOiEYBKyZe2I4QdWm7UXFjOvyviV84ZJSWiNp-9cEcuUekImN8jtfnmf3_4HMgA.fYXJpdGhtZXRpY3M0LnB5~XQAAgAA0AAAAAAAAAAAwiAOiES9Ps37Inw0qfG9M7-T-i9pIlseMPdretZIdGs5iE_XRmjDhfUT9FqrYzaHB_-xOgAA=.~lang=py-novice.~showLineNumbers=true.a1">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>


```python
a = -7
b = -4
x = a % b
y = (a + b) // b
print(x, y)
```





