# Type hinting

Type hinting reinforces some additional constraints on the types or arguments and returned values of a user defined function. It is optional, but highly recommended to ensure that functions are used as intended.

In this course, you are asked to use type hinting on all your defined functions. Marks will be deduced if you do not.

<img src="Images\function_type_hinting.png" height=300/> 

```python
def sum(num1: float, num2: float)  -> float :
    """Function which adds two numbers"""
	value = num1 + num2
	return value
```

```python
sum(20, 5)  #This will work
```

```python
sum("Hello", "there")  #This still works but will display a warning
```

<img src="Images\function_type_hinting_2.png" />

