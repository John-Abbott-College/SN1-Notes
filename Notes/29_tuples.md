# Sequence types and mutability

A **sequence type** in Python is a data type that can store multiple values, which can be accessed one by one in order. This means you can go through each value in the sequence step by step.

You've already seen lists, which are a common example of a sequence in Python. There are other sequence types too, which we'll explore.

Another important concept is **mutability**. This property indicates whether Python data can be changed freely during the program's execution. Python data types can be either **mutable** or **immutable**.

**Mutable data** can be updated at any time. This is referred to as modifying the data *in situ*, a Latin term meaning "in position." For example, consider the following instruction that modifies data in situ:

```python
list.append(1)
 
```

**Immutable data cannot be modified in this way**.

Imagine that a list can only be assigned and read over. You would be able neither to append an element to it, nor remove any element from it. This means that appending an element to the end of the list would require the recreation of the list from scratch.

The data type we want to tell you about now is a **tuple**. **A tuple is an immutable sequence type**. It can behave like a list, but it can't be modified in situ.



#  Tuples

The first and the clearest distinction between lists and tuples is the syntax used to create them - **tuples prefer to use parenthesis**, whereas lists like to see brackets, although it's also **possible to create a tuple just from a set of values separated by commas**.

**Example:**

```python
tuple_1 = (1, 2, 4, 8)
tuple_2 = 1., .5, .25, .125

print(tuple_1)
print(tuple_2)
 
```

There are two tuples, both containing **four elements**, this is what you should see in the console:

```python
(1, 2, 4, 8)
(1.0, 0.5, 0.25, 0.125)
```

Note: **each tuple element may be of a different type** (floating-point, integer, or any other not-as-yet-introduced kind of data).



## How to create a tuple

It is possible to create an empty tuple – parentheses are required then:

```
empty_tuple = ()
 
```

If you want to create a **one-element tuple**, you have to take into consideration the fact that, due to syntax reasons (a tuple has to be distinguishable from an ordinary, single value), you must end the value with a comma:

```
one_element_tuple_1 = (1, )
one_element_tuple_2 = 1.,
one_element_tuple_3 = ("apple",)
 
```

Removing the commas won't spoil the program in any syntactical sense, but you will instead get two single variables, not tuples.



## How to use a tuple

If you want to get the elements of a tuple in order to read them over, you can use the same conventions to which you're accustomed while using lists.

**Example:**

```python
my_tuple = (1, 10, 100, 1000)

print(my_tuple[0])   #outout: 1
print(my_tuple[-1])  #output: 1000
print(my_tuple[1:])  #outout:(10, 100, 1000)
print(my_tuple[:-2]) #output:(1,10)
```

The similarities may be misleading − **don't try to modify a tuple's contents**! It's not a list!

All of these instructions (except the topmost one) will cause a runtime error:

```python
my_tuple = (1, 10, 100, 1000)
 
my_tuple.append(10000)
del my_tuple[0]
my_tuple[1] = -10
 
```

This is the message that Python will give you in the console window:

```
AttributeError: 'tuple' object has no attribute 'append'Output
```



What else can tuples do for you?

- the len() function accepts tuples, and returns the number of elements contained inside;
- the + operator can join tuples together (we've shown you this already)
- the * operator can multiply tuples, just like lists;
- the in and not in operators work in the same way as in lists.



**Example:**

```python
my_tuple = (1, 10, 100)

t1 = my_tuple + (1000, 10000)
t2 = my_tuple * 3

print(t1)      #output: (1, 10, 100, 1000, 10000)
print(len(t2)) #output: 9
print(t2)      #output: (1, 10, 100, 1, 10, 100, 1, 10, 100)
print(10 in my_tuple) #output: True
print(-10 not in my_tuple) #output: True

```



**Example:**

```python
# Creating a tuple with different data types
mixed_tuple = (1, "Hello", 3.14, False)

# Printing the tuple
print("Mixed tuple:", mixed_tuple)  # Output: (1, 'Hello', 3.14, False)

# Accessing elements of the mixed tuple
print("Second element:", mixed_tuple[1])  # Output: Hello
```

