

# Strings



When programming, textual data is represented by objects called *strings*.  Textual data can be words such as *Apple*, or a short message such as *Hello World*, or longer sentences such as *In high school, Jimmy learned a little bit of programming that's why cegep feels easy for now*.  They are made up of a sequence of alphanumeric characters 



### Creating a string

Strings can be created in different ways, by using `""`, `''` or `""" """`. Let's explore the various ways of creating strings.

1. Using double quotes:

   ```python
   print("Hello World")
   ```

 - ```python
   my_string = "Johnny"
   print(my_string)
   ```

​	However, what if we wanted to add a double quote inside the string so that it would read *Hello "World"* ? 

> ​	Try this command `print('"Hello "World"")` What happens? What is the error?

- There are a few workaround this issue:

  - Use the escape character `\` in front of each double quote `print("Hello \"World\"")`

  - Use another method to create the string (see below) while keeping the inner `""`

    

2. Using single quotes:

   ```python
   print('Hello "World" ')
   ```

   - In Python you can also use the single quote`'` to define a string, this is useful when trying to include a double quote `"` within the string. 

   - Similarly to the double quote, you can use the escape character to include a single quote within the string.

     ```python
     print('I\'m enjoying programming! Well, when there are no bugs')
     ```

     

3. Using triple quotes:

   ```python
   print(""" This is a complex string with double quotes "" and a single quote '' that splits over
   ...  another line""")
   ```

   - This method of creating strings is called multistring as you can type many lines as well as double quotes and single quotes. It's ideal for long paragraphs. 



### Combining strings

```python
print('my name is ' + 'Jennifer')
```

- Combining or concatenating strings allows you to merge multiple strings into a single new string.





✍️**Challenge**: Use the `+` operator and print the following message: *My name is Jose Carlos. I am 19* 

```python
first_name = 'Carlos'
last_name = 'Jose'
age = "19"
... complete this
```



**String formatting**

- String formatting or string interpolation is powerful way of creating a template and inserting strings or other types of data into specific places in the created string. 

- For example, here is another way of combining the strings above using  `f''`:

  ```python
  combined_string = f'My name is {first_name} {last_Name}. I am {age}'
  ```

- We will be discussing string formatting in more detail later as we print or save numbers. 

  

### Splitting a string

As you learn to work with strings, you will encounter situations where the the information you are interested in has to be extracted from the raw data. 

Let's use the following string as an example.

```python
names = "Alex#Jennifer#Carlos#Francine"
```

What if we would like to extract all the names from this string?

Luckily, there is a python "function" called `split() `which breaks a given string into a `list` of substrings using a specific separator:

```python
print(names.split('#'))

# Output : ['Alex', 'Jennifer', 'Carlos', 'Francine']
```



> - `split()` is actually a method not a function because a function doesn't need any object to be called, just like `print()` it can be called on its own. On the other hand, a method is always associated with an object, like `<a string>.split()` which can only be called on strings.
> - Unlike the `print()` it cannot be called on its own. Which means you have to use the `.` following the name the string variable you are splitting



### Reading individual characters and for-loop
