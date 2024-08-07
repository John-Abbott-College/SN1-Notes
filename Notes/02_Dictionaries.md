#  Dictionaries



The **dictionary** is another Python data structure. It's **not a sequence** type (but can be easily adapted to sequence processing) and it is **mutable**.

Dictionaries store data values in key pairs, allowing for changeable collections that do not permit duplicates.

To explain what the Python dictionary actually is, it is important to understand that it is literally a dictionary.



## How to make a dictionary

To assign initial pairs to a dictionary, use the following syntax:

- Enclose the list of pairs with **curly braces**.
- Separate the pairs with **commas**.
- Separate keys and values within each pair with **colons**.

**Example:**

```python
dictionary = {
    "cat": "chat", 
    "dog": "chien", 
    "horse": "cheval"}

phone_numbers = {
    'boss': 5551234567, 
    'Suzy': 22657854310}

empty_dictionary = {}
 
print(dictionary)        #output: {'cat': 'chat', 'dog': 'chien', 'horse': 'cheval', }
print(phone_numbers)     # outout: {'boss': 5551234567, 'Suzy': 5557654321}
print(empty_dictionary)  #output: {}
 
```

* The first example is a simple English-French dictionary that uses strings for both keys and values.
* The second example is a very small telephone directory, where the keys are strings and the values are integers. You can also have the reverse layout (keys as numbers, values as strings) or even a number-number combination.
* The empty dictionary is constructed by an **empty pair of curly braces** − nothing unusual.

The Python dictionary works in the same way as **a bilingual dictionary**. For example, you have an English word (e.g., cat) and need its French equivalent. You browse the dictionary in order to find the word (you may use different techniques to do that − it doesn't matter) and eventually you get it. Next, you check the French counterpart and it is (most probably) the word "chat".

The values in dictionary items can be of any data type: String, int, Boolean, and list data types:

**Example:**

```python
thisdict = {
 "brand": "Ford",
 "electric": False,
 "year": 1964,
 "colors": ["red", "white", "blue"]}
```



In Python's world, the word you look for is named a key. The word you get from the dictionary is called a value.

This means that a dictionary is a set of **key-value** pairs. Note:

- each key must be **unique** − it's not possible to have more than one key of the same value;
- a key may be **any immutable type of object**: it can be a number (integer or float), or even a string, but not a list;
- a dictionary is not a list − a list contains a set of numbered values, while a **dictionary holds pairs of values**;
- the len() function works for dictionaries, too − it returns the number of key-value elements in the dictionary;
- a dictionary is a **one-way tool** − if you have an English-French dictionary, you can look for French equivalents of English terms, but not vice versa.

## Accessing Dictionary Values

Accessing dictionary values in Python involves retrieving the value associated with a specific key. 

You can access the value associated with a specific key by using the key inside square brackets `[]`. If the key exists, it will return the corresponding value.

**Example:** 

```python
print(dictionary['cat'])
print(phone_numbers['Suzy'])
print(dictionary['rabbit'])
```

> [!NOTE]
>
> - if the key is a string, you have to specify it as a string;
> - **keys are case-sensitive**: 'Suzy' is something different from 'suzy'
> - you **mustn't use a non-existent key**.



The  outputs two lines of example:

```python
chat
22657854310
KeyError: 'rabbit'
```

## Get

The `get` method in Python is used with dictionaries to retrieve the value associated with a given key. It provides a way to access dictionary values safely, with an option to specify a default value if the key is not found.

Here’s a detailed explanation:

Syntax:

```python
dictionary.get(key, default_value)
```

> [!TIP]
>
> Penefits of Get 
>
> **Avoids KeyErrors**: Using `get` prevents raising a `KeyError` if the key does not exist.
>
> **Provides Default Values**: It allows you to specify a default value, which can be useful for handling missing keys gracefully.

**Example:**

```python
print(dictionary.get('cat', 'Not Found'))  # Output: chat
print(phone_numbers.get('Suzy', 'Not Found'))  # Output: 22657854310
print(dictionary.get('rabbit', 'Not Found'))  # Output: Not Found
```



## Modifying and adding values

Assigning a new value to an existing key is simple - as dictionaries are fully **mutable**, there are no obstacles to modifying them.

We're going to replace the value `5551234567` which the boss number  with `1234567890`. 

**Example**

```python
phone_numbers = {
    'boss': 5551234567, 
    'Suzy': 22657854310}
 
phone_numbers['boss'] = 1234567890
print(phone_numbers)   #output: {'boss': 1234567890, 'Suzy': 22657854310}}
```



## Adding a new key

Adding a new key-value pair to a dictionary is as simple as changing a value – you only have to assign a value to a new, **previously non-existent key**.

Note: this is very different behavior compared to lists, which don't allow you to assign values to non-existing indices.

**Example:**

```python
dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
 
dictionary['swan'] = 'cygne'
print(dictionary) # output: {'cat': 'chat', 'dog': 'chien', 'horse': 'cheval', 'swan': 'cygne'}
```



> [!NOTE]
>
> You can also insert an item to a dictionary by using the update() method, e.g.:

**Example:**

```python

dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
 
dictionary.update({"duck": "canard"})
print(dictionary) # output: {'cat': 'chat', 'dog': 'chien', 'horse': 'cheval', 'duck': 'canard'}
 
```



## Removing a key

Removing a key will always cause the **removal of the associated value**. **Values cannot exist without their keys**.

This is done with the del instruction.

**Example:**

```python
dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
 
del dictionary['dog']
print(dictionary) #output: {'cat': 'chat', 'horse': 'cheval'}
 
```

> [!CAUTION]
>
> **Removing a non-existing key causes an error**.



The example outputs:

```
{'cat': 'chat', 'horse': 'cheval'}
```

**Example:**

1. Create a dictionary named `students` with the following initial key-value pairs:
   - "Alice": 85
   - "Bob": 78
   - "Charlie": 92
   - "David": 88
2. Add a new student named "Eve" with a grade of 90 to the dictionary.
3. Remove the student "Alice" from the dictionary.
4. Check if the student "Charlie" is in the dictionary. If found, print their grade. If not, print "Student not found."

**Solution:**

Here is a sample solution to the challenge:

```python
pythonCopy code# Step 1: Create the initial dictionary
students = {
    "Alice": 85,
    "Bob": 78,
    "Charlie": 92,
    "David": 88
}

# Step 2: Add a new student
students["Eve"] = 90


# Step 3: Remove the student Alice
del students["Alice"]

# Step 4: Check if Charlie is in the dictionary and print their grade
if "Charlie" in students:
    print(f"Charlie's grade: {students['Charlie']}")
else:
    print("Student not found.")

```

✍️**Challenge**: Simple Contact Manager without Functions or Loops

Your task is to perform the following steps to manage contacts using a dictionary without using functions or loops:

1. Create an empty dictionary named `contacts`.
2. Add a few contacts to the dictionary with names as keys and phone numbers as values.
3. Search for a contact by name and display the phone number. If the contact is not found, display a message saying the contact does not exist.
4. Update the phone number of an existing contact.
5. Delete a contact from the dictionary.
6. Print all contacts in the dictionary.