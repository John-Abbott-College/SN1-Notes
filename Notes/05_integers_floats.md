# Integers & Floats 

Integers or `int` are whole number i.e.: **do not have a fractional** value.  On the other hand, `float` are floating-point numbers that **have a fractional** part. The reason why we make this distinction is because `int` and `float` are not stored in the same way within a computer's memory.

To know if a value is of a specific type, you can use the `type()` function, for example (the commands below are typed within a terminal/repl): 

```cmd
>>> num = 3
>>> type(num)
```

 Output: `int`

```cmd
>>> another_num = 3.14
>>> type(another_num)
```

Output: `float`

### Scientific notation

Python supports scientific notation if you are dealing with large numbers:

```python
>>> 5e6
```

This value corresponds to five million (5 000 000). 



### Underscores between digits

The following corresponds to *eleven million one hundred eleven thousand one hundred eleven*.  (11 111 111). Since we cannot separate the digits with spaces, there are two valid ways of writing this number in `Python`:

```cmd
>>> 11111111
>>> 11_111_111
```



> Python 3.6 has introduced underscores in numeric literals, allowing for the placement of single underscores tween digits and after base specifiers for improved readability. This feature is not available in older versions of Python. [1]

### Negative numbers

To create a negative integer, you can simply add a minus sign:

```cmd
>>> -14568
```



### Converting from one type to another

You can convert an integer into a float by using the function`float()`, e.g: `float(10)` this returns `10.0`. Likewise, you can convert a `float` into an integer using `int(3.14)`.  This will truncate the decimal part of the `float` number, the resulting `int` is `3`.  Therefore, you must be careful when performing those conversion because this might result in loosing precision or loosing information. We say that `float`s are **wider** range than `int`or `int` are **narrower** than floats, because they include less possibilities of numbers. 

This will become more relevant when performing arithmetic operations between the different types. 



# Reference 

1. *Cisco skills for all*. (n.d.). https://skillsforall.com/launch?id=da0847b7-e6fc-4597-bc31-38ddd6b07a2e&tab=curriculum&view=7f5e478b-86ed-59e1-a590-7c95a41832d5]

   
