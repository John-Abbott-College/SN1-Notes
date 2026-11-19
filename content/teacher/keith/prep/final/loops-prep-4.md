## Loops 4

### Goal: Compare different types of loops

Given this list of cities (yes - London should be added twice):
```python
cities = ["Montreal", "Toronto", "London", "London", "Paris"]
distance = [0, 505, 5237, 5237, 5520]
```

#### Indexed Loop
Write a function called distance1 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use an indexed loop like:

```python
for i in range(...):
```

#### Direct Loop
Write a function called distance2 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a direct loop like:

```python
for num in numbers:
```

#### Enumeration Loop
Write a function called distance3 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a loop wih enumerate like:

```python
for i, num in enumerate(numbers):
```

#### Zip Loop
Write a function called distance4 that takes in a list of strings and a list of numbers and prints the 1st string with the 1st number, then the 2nd string with the 2nd number etc. Use a loop wih zip like:

```python
for a, b in zip(list_a, list_b):
```

### Analysis
- Did each of the for loops work properly?
- Was there an advantage or disadvantage to any of them?

