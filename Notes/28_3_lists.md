## Lists in action



Imagine you need to rearrange the elements of a list by reversing their order: swapping the first with the fifth and the second with the fourth, while leaving the third element untouched.

Question: how can you swap the values of two variables? Python offers an easy way to perform the swap:

```
variable_1 = 1
variable_2 = 2
 
variable_1, variable_2 = variable_2, variable_1
 
```



**Example:**

```
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

## Sorting and Reverse a list



#### sort()



The `sort()` method in Python is used to arrange the elements of a list in a specific order, typically in ascending order. When you call `sort()` on a list, it modifies the original list to be sorted.

**Example:**

```
numbers = [5, 3, 1, 2, 4]
numbers.sort()

print(numbers)  # Output: [1, 2, 3, 4, 5]
```



In this example, the `numbers` list is sorted in ascending order. After calling `sort()`, the elements are arranged from the smallest to the largest.

#### reverse()



There is also a list method called The `reverse()` which is used to reverse the order of elements in a list. Unlike the `sort()` method, which arranges the list elements in a specified order, `reverse()` simply reverses the current order of the elements in place.

**Example:**

```
numbers = [5, 3, 1, 2, 4]
numbers.reverse()

print(numbers)  # outputs: [4, 2, 1, 3, 5]
```



✍️**Challenge**: What are the outputs of the following snippets?

```
a = 3
b = 1
c = 2
 
lst = [a, c, b]
lst.sort()
 
print(lst)
```



```
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

#### 1. **Basic Slicing:**



```
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[1:4]
print(list_2)  # Outputs: [1, 2, 3]
```



This creates a new list, `list_2`, containing elements from index 1 to 3 of `list_1`.

#### 2.  **Omitting `start` and `stop`:**



```
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[:3]
print(list_2)  # Outputs: [0, 1, 2]

list_3 = list_1[3:]
print(list_3)  # Outputs: [3, 4, 5]
```



If `start` is omitted, the slice starts from the beginning of the list. If `stop` is omitted, the slice goes up to the end of the list.

#### 3.  **Copying a List: **



A slice in Python allows you to create a new copy of a list or parts of it. It copies the list's contents, not its name.

```
list_1 = [1, 2, 3, 4, 5]
list_2 = list_1[:]
list_1[0] = 2
print(list_2)  # Outputs: [1, 2, 3, 4, 5]
print(list_1)  # Outputs: [2, 2, 3, 4, 5]
```



#### 4.  Slices – negative indices



```
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[-4:-1]
print(list_2)  # Outputs: [2, 3, 4]
```



Negative indices count from the end of the list. Here, `-4` is the fourth last element, and `-1` is the last element (exclusive).

```
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[1:-1]
print(list_2) #outputs : [1, 2, 3, 4]
```



If the start specifies an element lying further than the one described by the end (from the list's beginning), the slice will be **empty**:

```
list_1 = [0, 1, 2, 3, 4, 5]
list_2 = list_1[-1:1]
print(list_2) #outputs : []
 
```



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

```
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
