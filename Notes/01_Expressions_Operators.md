

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

- You can convert an integer into a float by using `float(10)` 

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
| `**`     | Raises the first operand to the power of the second operand | Doesn't exist for string literals and will cause an error. | `4**2`, result :`16`(`int`)       | `4.0**2.0`, result :`16.0`(`float`)    | `4**2.0`, result :`16.0`(`float`)    |

#### Modulus `%`

- To grasp this operator, it's essential to recall what a division remainder is. Consider the following division:
  $$
  7/5 = 1.4  = 1 + 2/5
  $$

  <img src="Images/Equations/Quotient_Remainder.png"/>
  
  - Quotient: 1 
  - Remainder: 2 
  
- The **modulus** operation returns the remainder of a long division (e.g. `7 % 5 = 2`). If is an easy way to verify if a number is divisible by another number (remainder is 0).

- If performing this operation with two `int`, the result will be an `int` 

- If performing this operation with two `float`, the result will be a `float` (e.g.: `7.0 % 5.0 = 2.0`)

- If performing this operation with an `int` and a `float`, the int is automatically converted into the wider type `float` and the result is a `float`.

- This operator doesn't apply to string literals and will cause an error if used on strings.

- This operator is useful to determine if a number is odd or even. If it even, the remainder of a division by `2` would be `0`. Otherwise, if the number is odd, the remainder would be `1`:

  ```python
  # Odd numbers
  
  print(1 % 2)
  print(3 % 2)
  print(5 % 2)
  print(51 % 2)
  
  # Even numbers
  
  print(0 % 2)
  print(2 % 2)
  print(4 % 2)
  print(50 % 2)
  ```

  

#### Floor division `//`

- Divides the first operand by the second and rounds the result down to the nearest whole number. 
- If two `int` are used in this operation, the result is and `int`
- If any of the number is a `float`, the result will be a `float` and any integer will automatically be converted to the wider type `float`.
- This operator doesn't apply to string literals and will cause an error if used on strings.





✍️**Challenge 1**: Manually execute the operations of the program below and write the expected result.  Check your answers by running the code. 

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



✍️**Challenge 2**: Manually execute the operations below and write the expected result. Check your answers by running the code. 

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


✍️**Challenge 3**: Write a short program that prompts the user to input an amount of money in dollars and then calculates how many t-shirts they can purchase. Assume each t-shirt costs $15, including tax. 
<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXJpdGhtZXRpY3MzLnB5~XQAAgAAvAAAAAAAAAAAwiAOiEYBKyZe2I4QdWm7UXFjOvyviV84ZJSWiNp-9cEcuUekImN8jtfnmf3_4HMgA.oYXJpdGhtZXRpY3M0LnB5~XQAAgAA0AAAAAAAAAAAwiAOiES9Ps37Inw0qfG9M7-T-i9pIlseMPdretZIdGs5iE_XRmjDhfUT9FqrYzaHB_-xOgAA=.fYXJpdGhtZXRpY3M1LnB5~XQAAgACVAAAAAAAAAAAxHUisBlhRhzTv1qXGok1pVDmUVkrMtVD6nJWBiDZJJ4c9FPmJGRUbqp-VFDM52jHbusSs6AbhD5NbyMOdHgD01mBL4n6-Ijgu60YYPJpRKGvNdpdvCWfK7BomfX5p7Tsmvo1d_Hki9fj8LjAEYN8f_DInXviDhzkfpbrnYAn-yWSA.~lang=py-novice.~showLineNumbers=true.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>

```python
budget = float(input("Enter the amount of money in dollars ($)"))
...to complete
```



🏆✍️**Expert Challenge**: Write a short program to help the school administration calculate the number of sections per course given a certain number of registered students. Most groups should have an even number of students, with at least 18 students per classroom and a maximum of 32 students. The administration tries to minimize the number of groups and balances the number of students per classroom. 
> Note: There are many possible answers for this problem, but some answers are more optimal than others. You are allowed to use any arithmetic operators and simple if statements.

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXJpdGhtZXRpY3MzLnB5~XQAAgAAvAAAAAAAAAAAwiAOiEYBKyZe2I4QdWm7UXFjOvyviV84ZJSWiNp-9cEcuUekImN8jtfnmf3_4HMgA.oYXJpdGhtZXRpY3M0LnB5~XQAAgAA0AAAAAAAAAAAwiAOiES9Ps37Inw0qfG9M7-T-i9pIlseMPdretZIdGs5iE_XRmjDhfUT9FqrYzaHB_-xOgAA=.oc3R1ZGVudHNfcGVyX2NsYXNzcm9vbS5weQ==~XQAAgAC3AwAAAAAAAAARZ_6IyAHcsKA_gk8ErULb3y_0mEvwAQUvSH3Io5HuKO0lev5qHJtmUud-z0lOQyR4V5aTBthfzVxSylCfQyxTnKr23mg9xiuAJ0bEUJFpJbHv9MIsq-lktXXhTmnhrPY6MrWQI6HjUbh30gSnRHGTsz37WSSDvMx1STuZY19MoJ5zas8J9aUwZZzhZzVPp0j7w8mE_glYQPRLRqAcS3TVLgXqBwZBT9RnJgELR1Csakc8EMNeN37ReX5_TNtZQz_MSWXwMHId0TCjFkyOKeVjXdprzJ64S77CweI2YnN1TBgBuabcZHePq4pHbV3Yf1eyhhfCFq26Jq02dWDwuaHzoKazt0S29qpWLGhkL7Za9WsWtFENo76gcpJM9hsqdZNKXriIyFZRbsgAEE9M9bF055daGQcb-kjpvq5aFf-IU01recFkZJ24NSd6ddZConWiEAWqOB_u-_x75A==.fc3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5~XQAAgABVCAAAAAAAAAARaAQIZvNx2aPvSLSjLYQfdOpuOXia6VgdWdqdP6BlGcP6R0JD_HLKEarDGKRtsSjY-1tTLZ3jzLL25cCmEralncL5cLPelfiJci5_OwHVAyPm3pSgwDcDWZ2BLHVn5SCjSl2YqdnbXwyWS2SuBPseRjH9DAqI9TSAj8dVdn-VtFKoLjXU5S4bOxQkmUEB8XEmzojR4F_HEPOBpR_FJ-ZLafJ_mupI_JeDgBQQOHjhASaKSDA9C_6V7P1XBQ5dbCY_qjHx5yWBX1rbEu-5FTBkBDL3PAOlmGUUVZyc14fHlIDhg5NiGr8G_41npD0gwOwaU08BI3L7lYe6PL_gTeGJ46BwvadLTALvFHAeuhpZXEggwmZ7iKzO7dZdTMaO-y5-JgHuShKlO4S9lZQxb3jP3lsp9Xf_Lf1WIM54m5OGOTiz26pKH20lZa2GjNwZCGSiZjUhLkhpaFGS4VB5JVVvx_331JOEI3pY_M57WO2l7_Uz-TCbpvVwKTff4aVvzuRvS_2DTtIbYjBIlME25wmfBK8s-Q7ouKdptwBpAPkeBi3sYRyGtc5BLAvE7-usjbdDk6Nk56qKKQjBZyk_yAcoSKzcPfs3qiyzmWELx28irP0FvgpHU3UhAyygjjwUoPKEs74z7FRJHBIv-NuImjUqS0JTKwpWHkM5Y1ttJ7ar_QD7tzUY3d4xWmWxH5U3VVYXW8-IJsxKGkqcQBTzn1ZXlpbLZpiu0ZnZdSCcIuA5Ftb01-r_HOaCAVENHHu83UZfUDZT5Vrn-61kHmP1DDucS-CX9iEzaJl0IXYEWhx0qY0e5x8i9xAagcYGR5kigJZyJv_78gdHuZLwxgdhdGaRz4tXUbvnvyWPQyQHwf-ZTm2Yf1FUs1z-ekrxiRHvU6GV9tUmfCw5EFlwNuRr2ijv09XybRM_rZf75_8AFIzklxU6EN84tA25VLH_8MnCXA==.~lang=py-novice.~showLineNumbers=true.~hidden=true.ibG9hZCgiYXJpdGhtZXRpY3M0LnB5IikKbG9hZCgiYXJpdGhtZXRpY3M0LnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbS5weSIpCmxvYWQoInN0dWRlbnRzX3Blcl9jbGFzc3Jvb20ucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbS5weSIpCmxvYWQoInN0dWRlbnRzX3Blcl9jbGFzc3Jvb20ucHkiKQoxNSoyNwpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKbG9hZCgic3R1ZGVudHNfcGVyX2NsYXNzcm9vbV8yLnB5IikKNDUwLzMyCjQ1MC8xNQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQoxNSozMApsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQoxNSozMAoxNSo0CjQ5MAo1NTEwCjQ5MCs2MApsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQpsb2FkKCJzdHVkZW50c19wZXJfY2xhc3Nyb29tXzIucHkiKQozMCoxNCszMQo=.e">         
    <button class="codeboot-button">
      <span>Possible Solution 1</span>
    </button>     
    </a> 
</div>






