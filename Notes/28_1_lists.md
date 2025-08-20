# Why do we need lists?

When you need to read, store, process, and print large amounts of numbers, creating a separate variable for each one is impractical. For instance, reading five numbers individually  would be cumbersome and time-consuming.

```python
var1 = 10
var2 = 5
var3 = 7
var4 = 2
var5 = 1
```

Instead, you can use a list to handle multiple values within a single variable. For example:

```python
numbers = [10, 5, 7, 2, 1]
```

This creates a list named `numbers` containing five values. List is a special variable, which can hold more than one value at a time. 

The elements inside a list **may have different types**. Some of them may be integers, others floats, and yet others may be lists.

In Python, list elements are indexed starting from zero, meaning the first element has an index of 0 and the last element's index is the total number of elements minus one.

Using lists makes it convenient to manage and process large sets of data, such as sorting numbers in ascending order. This approach simplifies code and improves readability.



## Indexing lists

How do you change the value of a chosen element in the list?

Let's **assign a new value of 111 to the first element** in the list. We do it this way:

```python
numbers = [10, 5, 7, 2, 1]
print("Original list contents:", numbers)  # Printing original list contents.
 
numbers[0] = 111
print("New list contents: ", numbers)  # Current list contents.
```



And now we want **the value of the fifth element to be copied to the second element**:

```python
numbers = [10, 5, 7, 2, 1]
print("Original list contents:", numbers)  # Original list contents:[10, 5, 7, 2, 1]

numbers[1] = numbers[4]  # Copying value of the fifth element to the second.
print("New list contents:", numbers)  #New list contents: [10, 1, 7, 2, 1]
 
```

The value inside the brackets which selects one element of the list is called an **index**, while the operation of selecting an element from the list is known as **indexing**.



## Accessing list content

Each of the list's elements may be accessed separately. For example, it can be printed:

```python
print(numbers[0]) # Accessing the list's first element.
```



To print the whole list

```python
print(numbers) # Printing the whole list.
```



## Negative indices are legal

It may look strange, but negative indices are legal, and can be very useful.

An element with an index equal to -1 is **the last one in the list**.

**Example:**

```python
numbers = [10, 5, 7, 2, 1]
print(numbers[-1]) # the output is: 1
print(numbers[-2]) # the output is: 2

```

So, the last accessible element in our list is numbers[-4] (the first one) ‒ don't try to go any further!

## The Length of a list

The length of a list can change during program execution as new elements are added or existing elements are removed. This makes lists very dynamic.

To check the current length of a list, you can use the `len()` function, which takes the list's name as an argument and returns the number of elements currently in the list.

**Example:**

```python
numbers = [10, 5, 7, 2, 1]
print(len(numbers))  # the output is 5
```



## Adding elements to a list: append() and insert()

#### **append()**

A new element may be *added* to the end of the existing list:

```python
my_list.append(value)
```

* Such an operation is performed by a method named append(). It takes its argument's value and puts it **at the end of the list** which owns the method.

* The list's length then increases by one.

#### **insert()**

The insert() method is a bit smarter ‒ it can add a new element **at any place in the list**, not only at the end.

```python
my_list.insert(location, value)
 
```

To insert an element into a list, the insert() method takes two arguments:

* The position where the new element should be inserted. All existing elements from this position onward are shifted to the right to make room.
* The new element to be inserted.

**Example:**

```python
numbers = [10, 7, 5, 2, 1]
print(len(numbers))   # 5
print(numbers)        # [10, 7, 5, 2, 1]
###
numbers.append(4)
print(len(numbers))  #6
print(numbers)       #[10, 7, 5, 2, 1, 4]
###
numbers.insert(0, 20) 
print(len(numbers))    #7
print(numbers)         #[20, 10, 7, 5, 2, 1, 4]

```

The `append()` method in Python adds an element to the end of a list, while the `insert()` method inserts an element at a specified position, shifting subsequent elements to the right. The `len()` function returns the number of elements in the list.

Pay attention to what happens after using insert(): the former first element is now the second, the second the third, and so on.



#### **pop()**

An element may be **removed** from the list at a specific position using the `pop()` method:

```python
my_list.pop(index)
```

- The `pop()` method **removes the element** at the specified position (given by `index`) and **returns its value**.
- If no index is provided, `pop()` removes and returns the **last element** in the list.

**How It Works**:

1. The list's **length decreases by one** after the operation.
2. Attempting to `pop()` an index that doesn't exist raises an `IndexError`.

**Example**:

```python
my_list = [10, 20, 30, 40]
removed_value = my_list.pop(2)  # Removes index 2
print(my_list)  # Output: [10, 20, 40]
print(removed_value)  # Output: 30
```





