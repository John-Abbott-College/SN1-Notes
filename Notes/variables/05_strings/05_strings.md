# Strings

When programming, textual data is represented by objects called _strings_. Textual data can be words such as _Apple_, a short message such as _Hello World_, or longer sentences such as _In high school, Jimmy learned some programming. That's why cegep feels easy for him_. They are made up of a sequence of alphanumeric characters.

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

​ However, what if we wanted to add a double quote inside the string so that it would read _Hello "World"_ ?

> ​ Try this command `print(""Hello "World"")` What happens? What is the error?

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
     print('I\'m enjoying programming! Well, when there are no bugs.')
     ```

3. Using triple quotes:

   ```python
   print(""" This is a complex string with double quotes "" and a single quote '' that splits over
   ...  another line""")
   ```

   - This method of creating strings is called multistring as you can type many lines as well as double quotes and single quotes. It's ideal for long paragraphs.
