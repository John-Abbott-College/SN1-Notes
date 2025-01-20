## Logical operators



Logical operators are used to combine Boolean values and expressions (`True` or `False`).  They are helpful when programming decision making or creating more complex algorithms. 

There are instances where we need to test if multiple conditions are true at the same time. For example: 

- The relative humidity index must be 100% **AND** the temperature has to be decreasing for it to rain:

  ```python
  humidity_index < 100 and temperature_variation < 0
  ```

  

- The oil in the car should be changed every 6 months **OR** every 5,000 km:

  ```
  num_months >= 6 or  milage >= 5000
  ```

  

- To return a new sweater you must have the receipt **AND NOT** remove the price tag.

  ```python
  has_receipt = True
  price_tage_removed = False
  has_receipt and not price_tag_removed
  ```

  

The combination of **AND**, **OR**, and **NOT** conditions with the boolean values `True` and `False` is called *boolean algebra* (or boolean logic), each operation has a special symbol in math and in Python.



| MATH | Python | Operation | Description                             |
| :--- | :----- | :-------- | :-------------------------------------- |
| ⋀    | `and`  | AND       | True when all elements are true.        |
| ⋁    | `or`   | OR        | True when at least one element is true. |
| ¬    | `not`  | NOT       | The inverse of an element.              |

<img src="Images/09_and_or_not.png" height=200/>



## Operator `and`

**Example**

For a meal to be considered a "special", a client must by a pizza and a drink.

| English                                                      | Math                                 | Python                                       |
| ------------------------------------------------------------ | ------------------------------------ | -------------------------------------------- |
| Omnivox is accessible if you are a student  **AND** have the correct password. | access = student ∧∧ correct password | `access = is_student and is_valid_password;` |



### Operator `or`

**Example**

| English                           | Math                    | Python                      |
| --------------------------------- | ----------------------- | --------------------------- |
| Today is a weekday *OR* a weekend | day = weekend ⋁ weekday | `day = weekend or weekday;` |

So, we send our friend out to get pizza and drinks. They come back with pizza and a drink.



### Operator `not`

This operator transforms the variable into **its opposite**. It's also know as **negation**.

**Example**

You are at the library and can only borrow a new book if you do not have any overdue books.

| English                                                 | Math                                 | Python                                        |
| :------------------------------------------------------ | :----------------------------------- | :-------------------------------------------- |
| I can borrow a book if I do *NOT* have an overdue book. | borrow permissible  = ¬ book overdue | `borrow_permissiable = not has_overdue_books` |



## Order of Operations 

Like **PEDMAS** for math equations ('Parenthesis', 'Exponents', 'Division/Multiplication', 'Addition/Subtraction'), there is an order of operations for resolving `True` and `False`



**Order of Operations, from highest to lowest**

| Operation                        | Order | Example             | Explanation                                                  |
| -------------------------------- | ----- | ------------------- | ------------------------------------------------------------ |
|                                  |       |                     |                                                              |
| `in`, `not in`                   | 1     | `'hi' in greetings` | is something in, or not in, a list (or list-like object) (returns `Boolean`) |
| `is`, `is not`                   | 1     | `obj is None`       | are two objects equivalent (not equal, but literally the same thing) (returns `Boolean`) |
| `<`, `<=`, `>`, `>=`, `!=`, `==` | 1     | `x < y`             | comparison of two things (returns `Boolean`)                 |
| `not`                            | 2     | `not x`             | negating the `True`/`False` value of `x` (returns `Boolean`) |
| `and`                            | 3     | `x<y and x>z`       | combining two `boolean` values (returns `Boolean`)           |
| `or`                             | 4     | `x<y or x>z`        | combining two `boolean` values (returns `Boolean`)           |

These sets of equations are equivalent (assume all variables are boolean):

```python
x and y or z
(x and y) or z

x or y and z
x or (y and z)

x and not y or z
(x and (not y) ) or z

x or not y and z
x or ( (not y) and z)
```



✍️**Challenge**: The following program asks the user for the current year and determines if it is an olympic year. Manually execute the operations below and write the expected result. Check your answers by running the code.

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYm9va3NfZXhhbXBsZS5weQ==~XQAAgABhAQAAAAAAAAAmkEdXvOTiBd_V7Sg2UnzxiMPkGnPkqjQFb6bsOFALs1usuIst7u1dKnSr12RkABkw8rxC5uZF2R3k_d80JTCGKk1cqSLRu68iR3cGLQam7oYOHgSyRUv-KLVXoxsnxg82x0PHN_h2fmcxo7awM2dhsjiuCPpnXAa5Es7TYHq8VT6G2ggDKbp1GC36d_lK_fEZlyd9INBaTxy9fpTMv3N2bhLYG5SelCOFyB2Z95_8YitA.fb2x5bXBpY195ZWFyLnB5~XQAAgAAUAQAAAAAAAAA8mUhJnNeTvgcHkuX6AKbvV44PQEueSO04tYqSeNwNpQw3aHA63QYB9T_K98jsUjlhK0oH-Tj_fEaUlYRNW7jtRw7NdNvfEaww9YUxJMC_6w_QlXlRiFipOXqsfFiEeeQmWuxuBRQBuoD-4j_WkC1MRH9lIei-wS8G8IvFmM-f6DUMXm9z78XVDIK4bFqtoP30gwU=.~lang=py-novice.~showLineNumbers=true.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>


```python
year = 2024
time_to_next_olympiad  = year % 4
is_summer_olympics = (time_to_next_olympiad == 0)
is_winter_olympics = (time_to_next_olympiad == 2)  and ((year % 2) == 0)
print("True or False, this year is an olympic Games year?")
print(is_summer_olympics or is_winter_olympics)
```

> *The last Summer and Winter Games held in the same year were in Barcelona (Summer) and Albertville (Winter) in 1992. Since then, the Summer and Winter Games are each still held every four years but the Summer Games are celebrated during the first year of an Olympiad and the Winter Games held in the third year.* Source: [International Olympic Committee](https://olympics.com/ioc/faq/history-and-origin-of-the-games/since-when-have-the-summer-and-winter-games-no-longer-been-held-in-the-same-year) algorithm.

