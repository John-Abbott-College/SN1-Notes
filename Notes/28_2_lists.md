## Looping through a list 

Looping through a list involves visiting each item in the list one by one to perform an operation on it.  The`for` loop is the ideal tool to repeat a statement while iterating over whatever is in the list. 

**Example** 

The following way traverses each letter one by one.

```python
my_list = ['a','b','c','d','e','f']
for item in my_list:
    print(item)
```



If there is a need to keep track of the iteration number`i` of each element, Python offers the built-in function [ `enumerate()`](https://www.geeksforgeeks.org/enumerate-in-python/) to return both the `index` and the `item` without having  to use `range()` and `len()`.

```python
for i, item in enumerate(my_list):
	print(i, item)
```



## Paired lists - using `Zip`

Consider the following two lists that represent various travel destinations and their associated ticket prices.

```python
destinations = ["Tokyo","Muscat", "Cancun", "Paris"]
ticket_prices = [2769.00, 2680.00, 478.00, 1347.00]

```

What if we would like to display each destination and its ticket price as such:

```
Tokyo  2769.00$
Muscat 2680.00$
Cancun  478.00$
Paris  1347.00$
```

An initial strategy would be to iterate over both lists using a `for` loop iterating `enumerate()`, assuming that both lists will always have the same length, such as :

```python
for i,destination in enumerate(destinations):
	price = ticket_prices[i]
	print(destination, f"{price}$")
```

## **Zip()**

The `zip()` function returns a single combined "sequence"  returning the pair of `destination` and its`price` :

```python
for price, destination in zip(ticket_prices,destinations):
	print(destination, f"{price}$")
```

> Sidenote: You can actually "see" the resulting of zipping is by converting it into a list and printing it:
>
> ```
> zip_result = zip(ticket_prices,destinations)
> print(list(zip_result))
> ```
>
> **Output:** It's a list of pairs of values : 
>
> [(2769.0, 'Tokyo'), (2680.0, 'Muscat'), (478.0, 'Cancun'), (1347.0, 'Paris')]



You can also combine multiple lists using zip, but be careful to respect the order of the unpacked items:

```python
durations = [7,8,3,5]
for price, destination, duration in zip(ticket_prices, destinations, durations):
	print(destination, f"{price}$", f"{duration} days")
```



**Example**

```python
# Lists of data
students = ["Alice", "Bob", "Charlie"]    
grades = [85, 90, 78]                    
subjects = ["Math", "Science", "English"] 

for student, grade, subject in zip(students, grades, subjects):
    print(f"{student} scored {grade} in {subject}.")
```

> output:
>
> Alice scored 85 in Math.
> Bob scored 90 in Science.
> Charlie scored 78 in English.

