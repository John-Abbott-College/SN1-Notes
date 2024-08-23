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



## Removing elements from a list

Any of the list's elements may be **removed** at any time ‒ this is done with an instruction named del (delete). 

You have to point to the element to be removed, it'll vanish from the list, and the list's length will be reduced by one.

**Example:**

```python
numbers = [10, 5, 7, 2, 1]
del numbers[1]  # delete the seconf element 
print(len(numbers))  # the output is 4
print(numbers) # [10, 7, 2, 1]
```

✍️**Challenge**: Given the following list: `my_list = [7, 3, 2, 5, 8]`, perform the following tasks in Python:

1. Write a line of code that replaces the middle number in `my_list` with an integer number entered by the user.
2. Write a line of code that removes the last element from the list.
3. Write a line of code that prints the current length of `my_list`.



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

## Lists in action

Imagine you need to rearrange the elements of a list by reversing their order: swapping the first with the fifth and the second with the fourth, while leaving the third element untouched.

Question: how can you swap the values of two variables? Python offers an easy way to perform the swap:

```python
variable_1 = 1
variable_2 = 2
 
variable_1, variable_2 = variable_2, variable_1
 
```

**Example:**

```python
my_list = [10, 1, 8, 3, 5]
 
my_list[0], my_list[4] = my_list[4], my_list[0]
my_list[1], my_list[3] = my_list[3], my_list[1]
 
print(my_list) # [5, 3, 8, 1, 10]
```

✍️**Challenge**: Create an empty list named `noble_gases`.

1. Use the `append()` method to add the following noble gases to the list: Helium, Neon, and Argon.
2. Prompt the user to add two more noble gases to the list: Krypton and Xenon, using the `append()` method.
3. Use the `del` instruction to remove Krypton and Xenon from the list.
4. Use the `insert()` method to add Radon to the end of the list.



## Sorting and Reverse  a list

#### sort()

The `sort()` method in Python is used to arrange the elements of a list in a specific order, typically in ascending order. When you call `sort()` on a list, it modifies the original list to be sorted.

**Example:**

```python
numbers = [5, 3, 1, 2, 4]
numbers.sort()

print(numbers)  # Output: [1, 2, 3, 4, 5]
```

In this example, the `numbers` list is sorted in ascending order. After calling `sort()`, the elements are arranged from the smallest to the largest.

#### reverse()

There is also a list method called The `reverse()` which is used to reverse the order of elements in a list. Unlike the `sort()` method, which arranges the list elements in a specified order, `reverse()` simply reverses the current order of the elements in place.

**Example:**

```python
numbers = [5, 3, 1, 2, 4]
numbers.reverse()

print(numbers)  # outputs: [4, 2, 1, 3, 5]

```

 ✍️**Challenge**: What are the outputs of the following snippets?

```python
a = 3
b = 1
c = 2
 
lst = [a, c, b]
lst.sort()
 
print(lst)
```

```python
a = "A"
b = "B"
c = "C"
d = " "
 
lst = [a, b, c, d]
lst.reverse()
 
print(lst)
```



## Slice a list

A slice in Python is a way to extract a portion of a list (or any sequence type) to create a new list. The syntax for slicing is `list[start:stop]`, where:

- `start` is the index at which the slice starts (inclusive).
- `stop` is the index at which the slice ends (exclusive).

Here are more details and examples to illustrate:

1. #### **Basic Slicing:**

   ```python
   list_1 = [0, 1, 2, 3, 4, 5]
   list_2 = list_1[1:4]
   print(list_2)  # Outputs: [1, 2, 3]
   ```

   This creates a new list, `list_2`, containing elements from index 1 to 3 of `list_1`.

2. #### **Omitting `start` and `stop`:**

   ```python
   list_1 = [0, 1, 2, 3, 4, 5]
   list_2 = list_1[:3]
   print(list_2)  # Outputs: [0, 1, 2]
   
   list_3 = list_1[3:]
   print(list_3)  # Outputs: [3, 4, 5]
   ```

   If `start` is omitted, the slice starts from the beginning of the list. If `stop` is omitted, the slice goes up to the end of the list.

3. #### **Copying a List: **

   A slice in Python allows you to create a new copy of a list or parts of it. It copies the list's contents, not its name. 

```python
list_1 = [1, 2, 3, 4, 5]
list_2 = list_1[:]
list_1[0] = 2
print(list_2)  # Outputs: [1, 2, 3, 4, 5]
print(list_1)  # Outputs: [2, 2, 3, 4, 5]
```

4. #### Slices – negative indices

```python
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[-4:-1]
print(list_2)  # Outputs: [2, 3, 4]
```

Negative indices count from the end of the list. Here, `-4` is the fourth last element, and `-1` is the last element (exclusive).

```python
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[1:-1]
print(list_2) #outputs : [1, 2, 3, 4]
```

If the start specifies an element lying further than the one described by the end (from the list's beginning), the slice will be **empty**:



```python
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[-1:1]
print(list_2) #outputs : []
 
```



## More about the *del* instruction

The previously described del instruction is able to **delete more than just a list's elements at once ‒ it can delete slices too**:

```python
numbers = [5, 3, 1, 2, 4]
del my_list[1:3]
print(numbers) #output: [5, 2, 4]
 
```



Deleting **all the elements** at once is possible too:

```python
numbers = [5, 3, 1, 2, 4]
del my_list[:]
print(numbers) #output: []
 
```



Removing the slice from the code changes its meaning dramatically.

```python
numbers = [5, 3, 1, 2, 4]
del my_list
print(my_list)
 
```

The del instruction will **delete the list itself, not its content**.

The print() function invocation from the last line of the code will then cause a **runtime error**.



## The `in` and `not` in operators

Python offers two very powerful operators, able to **look through the list in order to check whether a specific value is stored inside the list or not**.

These operators are:

```python
elem in my_list
elem not in my_list
 
```

**The first of them (in):**

To checks if a given element (its left argument) is currently stored somewhere inside the list (the right argument) ‒ the operator returns True in this case.

**The second (not in): ** 

To checks if a given element (its left argument) is absent in a list ‒ the operator returns True in this case.

**Example:**

```python
numbers = [5, 3, 1, 2, 4]

print(5 in numbers)    #output: True
print(5 not in numbers)#outout: False
print(12 in numbers)   #output: False

```

✍️**Challenge**: You are given a list of integers My_list = [2, 4, 6, 7, 9, 3, 1]. Your task is to perform the following operations on the list :

1. Create a slice of the list that includes only the first four elements.

2. Replace the last element of the original list with the sum of the first and last elements from the slice.

3. check if number 5, and 7 are on the list

4. Add a new integer to the end of the sliced list.

5. Print the lengths of both the modified original list and the modified sliced list.

   

✍️**Challenge**: Insert in or not in instead of ??? so that the code outputs the expected result.

```python
my_list = [1, 2, "in", True, "ABC"]
 
print(1 ??? my_list)  # outputs True
print("A" ??? my_list)  # outputs True
print(3 ??? my_list)  # outputs True
print(False ??? my_list)  # outputs False
```



## Summary:

This is a summary of all the list functions and their descriptions.

| Method                                                       | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [append()](https://www.programiz.com/python-programming/methods/list/append) | Adds an item to the end of the list                          |
| [extend()](https://www.programiz.com/python-programming/methods/list/extend) | Adds items of lists and other iterables to the end of the list |
| [insert()](https://www.programiz.com/python-programming/methods/list/insert) | Inserts an item at the specified index                       |
| [remove()](https://www.programiz.com/python-programming/methods/list/remove) | Removes item present at the given index                      |
| [pop()](https://www.programiz.com/python-programming/methods/list/pop) | Returns and removes item present at the given index          |
| [clear()](https://www.programiz.com/python-programming/methods/list/clear) | Removes all items from the list                              |
| [index()](https://www.programiz.com/python-programming/methods/list/index) | Returns the index of the first matched item                  |
| [count()](https://www.programiz.com/python-programming/methods/list/count) | Returns the count of the specified item in the list          |
| [sort()](https://www.programiz.com/python-programming/methods/list/sort) | Sorts the list in ascending/descending order                 |
| [reverse()](https://www.programiz.com/python-programming/methods/list/reverse) | Reverses the item of the list                                |
| [copy()](https://www.programiz.com/python-programming/methods/list/copy) | Returns the shallow copy of the list                         |

