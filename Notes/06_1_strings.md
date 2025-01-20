

# Strings



When programming, textual data is represented by objects called *strings*.  Textual data can be words such as *Apple*, a short message such as *Hello World*, or longer sentences such as *In high school, Jimmy learned some programming. That's why cegep feels easy for him*.  They are made up of a sequence of alphanumeric characters.



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

> ​	Try this command `print(""Hello "World"")` What happens? What is the error?

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



### Combining strings

```python
print('my name is ' + 'Jennifer')
```

- Combining or concatenating strings allows you to merge multiple strings into a single new string.





✍️**Challenge 1**: Use the `+` operator and print the following message: *My name is Jose Carlos. I am 19* 

```python
first_name = 'Carlos'
last_name = 'Jose'
age = "19"
... complete this
```
<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.fY2hhbGxlbmdlXzFfc3RyaW5ncy5weQ==~XQAAgAB5AAAAAAAAAAAzGkqsDHS3yZVBWa5WuU7QM_KeWQeevEJUcGYfrL3-FaUb3PFP3rJh4MvDNO-UDmD7nJG24sb7kGPAIHJzWmmNcf0-KNRon71pjcon8QtB6nXlWgYLFl7yXfmAe4A=.~lang=py-novice.~showLineNumbers=true.~hidden=true.e" target="_blank">        
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>


**String formatting**

- String formatting or string interpolation is a powerful way of creating a template and inserting strings or other types of data into specific positions with the created string. 

- For example, here is another way of combining the strings above using  `f''`:

  ```python
  combined_string = f'My name is {first_name} {last_Name}. I am {age}'
  ```

- We will be discussing string formatting in more detail later for printtting or saving numbers. 

✍️**Challenge 2**: Use f-strings to print the following message: 
*I am a John Abbott student in the Science program.
I am currently in semester 1.
I am taking 15 credits.* 

```python
school = "John Abbott" 
program = "Science"
semester = 1
number_credits = 15
... complete this
```
<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oY2hhbGxlbmdlXzFfc3RyaW5ncy5weQ==~XQAAgAB5AAAAAAAAAAAzGkqsDHS3yZVBWa5WuU7QM_KeWQeevEJUcGYfrL3-FaUb3PFP3rJh4MvDNO-UDmD7nJG24sb7kGPAIHJzWmmNcf0-KNRon71pjcon8QtB6nXlWgYLFl7yXfmAe4A=.fY2hhbGxlbmdlXzJfc3RyaW5ncy5weQ==~XQAAgADrAAAAAAAAAAA5mMlPmjxwaEyBlFtWP3n-9YeSldSHgTL78h6hzXIyH3YBvTPRPTOJLxjjl5relcBZwGdXsPrhe7qNy44XJap0ql2y_XKzIDNmiG6437VBP-YCAcPrWuhJKUBEwSzZekH5WyOpUybKsEz6ReRreyR90HwxivM-A9ZGCPUqTfQ70hq79iTl-H71AxJYOe6_FYaVPE7sJhv_3y34wA==.~lang=py-novice.~showLineNumbers=true.~hidden=true.e" target="_blank">        
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>  

### Splitting a string

As you practice working with strings, you will encounter situations where you must extract only parts of a string to obtain the information you need.

Let's use the following string as an example.

```python
names = "Alex#Jennifer#Carlos#Francine"
```

What if we would like to extract all the names from this string?

Luckily, there is a python "function" called `split() `which breaks a given string into a `list` of substrings using a specific separator character. In this case, we would need to divide up the string into 4 new substrings and using the `#` as the seperator.

```python
print(names.split('#'))

# Output : ['Alex', 'Jennifer', 'Carlos', 'Francine']
```



> - `split()` is actually a method not a function because a function doesn't need any object to be called, just like `print()` it can be called on its own. On the other hand, a method is always associated with an object, like `<a string>.split()` which can only be called on strings.
> - Unlike the `print()` it cannot be called on its own. Which means you have to use the `.` following the name the string variable that is being split.

✍️**Challenge 3**: The following script contains important values that should be seperated. Use the `split()` method to output the following values: `['15', '49', '56.2', '78.0', '89.2', '456']`
```python

raw_data="15 49 56.2 78.0 89.2 456"

...complete this
```
<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oY2hhbGxlbmdlXzFfc3RyaW5ncy5weQ==~XQAAgAB5AAAAAAAAAAAzGkqsDHS3yZVBWa5WuU7QM_KeWQeevEJUcGYfrL3-FaUb3PFP3rJh4MvDNO-UDmD7nJG24sb7kGPAIHJzWmmNcf0-KNRon71pjcon8QtB6nXlWgYLFl7yXfmAe4A=.oY2hhbGxlbmdlXzJfc3RyaW5ncy5weQ==~XQAAgADrAAAAAAAAAAA5mMlPmjxwaEyBlFtWP3n-9YeSldSHgTL78h6hzXIyH3YBvTPRPTOJLxjjl5relcBZwGdXsPrhe7qNy44XJap0ql2y_XKzIDNmiG6437VBP-YCAcPrWuhJKUBEwSzZekH5WyOpUybKsEz6ReRreyR90HwxivM-A9ZGCPUqTfQ70hq79iTl-H71AxJYOe6_FYaVPE7sJhv_3y34wA==.fY2hhbGxlbmdlXzNfc3RyaW5ncy5weQ==~XQAAgAA8AAAAAAAAAAA5GEtUbbz67SFqkqtVQMtKQ4Ewxqs3F3xg0Hw4CYhb7i9jwZHfKbrxFXCZFZfHrjZTzIFW_xqblguf_tzMAA==.~lang=py-novice.~showLineNumbers=true.~hidden=true.e" target="_blank">        
    <button class="codeboot-button">
      <span>Solution</span>
    </button>     
    </a> 
</div>  

> You'll notice that when the seperator is a space character ` `, you can call the `split()` method without specifying any input argument. By default, this method seperates a string using the ` `.
> Comma seperated values (CSV) are popular files for sharing tables of data. We will see them a little but later in the course.


### Reading individual characters & slicing

Observe the following raw string data "Student number: 123456". What if we are interested only in this part "123456". There is no seperator character that allows us to split this string into 'Student number: ' and '123456'. Therefore we must find a way to get parts of a string in a more precise way. To solve this problem, we must understand more deeply what strings are made up of.

Strings are nothing more than sequences of unicode character ('a','b','c',....'%','#',....). Each character in a string occupies a specific position or index. For example in "Hello World", the 'H' character is at index 0, the 'e' is at index 1, the 'l' is at index 2, etc.

<img src="Images/strings_index.png" />

To access a specific character within the string, use square brackets `[]` and the index of the character to select:

```python
my_string = "Hello World"

print(my_string[0])   #Output: `H`
print(my_string[1])   #Output: `e`
print(my_string[2])   #Output: `l`
print(my_string[3])   #Output: `l`
print(my_string[4])   #Output: `o`
```


**Slicing**

Referring back to our example "Student number: 123456", the information we want to extract is located between index 16 and 21 inclusive. To retrieve a specific portion of a string, use slicing with the format `<start_index>:<end_index>`. Note that the `end_index` is not included in the slice, there for we must specify `[16:22]` :

```python
raw_data = "Student number: 123456"
useful_data = raw_data[16:22]  

print(useful_data)    #Output: `123456`
```

Notice that the `end_index` is one more than 21. That is because the range `16:22` will count 16, 17, 18, 19, 20, 21 and stop when the index reaches `end_index` (in this case: 22).  We will learn more about ranges with for loops. 



