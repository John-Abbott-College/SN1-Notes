# Reading/Writing Files

## Opening Files

Files are like books: before you can read from or write into them you must open them! 

Then, when you're finished you should close them too.)

SYNTAX: `file_variable = open(file_name, access_type)`

where:

- `file_variable` is the name of a variable used to represent the file
- `file_name` is the name (or _path_) of a file on your computer
- `access_type` can be:
  - `r` if you want to read the file, or
  - `w` if you want to write to the file (*this will erase everything in the file first!*)
  - `a` if you want to append (add) to a file (*this will preserve everything that was
  already in the file beforehand*)

```python
file_to_read = open("my_input.txt", "r")	# opens my_input.txt for reading
first_line = file_to_read.readline() # puts the first line in the file in a variable
file_to_read.close()
print("The file is closed")
```

or

```python
writeable_file = open("my_output.txt", "w")  # open my_input.txt for writing
file_to_read.write("File content!") # writes the string "File content!", saving it in the my_output.txt file
writeable_file.close()
print("The file is closed")
```

### Automatic file open/close using `with open()` syntax

Python has a way of opening files that guarantees that the file will automatically get closed when you're finished with it. 
This uses a Python statement called `with`:

```python
with open("my_input.txt", "r") as file_to_read:
    # Note: everything in the with block needs a tab insert.
    first_line = file_to_read.readline()

# Everything after the file is closed does not have a tab insert
print("The file is closed")
```

or

```python
with open("my_output.txt", "w") as writeable_file:
    file_to_read.write("File content!") # writes the string "File content!", saving it in the my_output.txt file
```

Like other blocks in Python (`if-else`/`for`/`def`) you must indent all of the lines of code which will be dealing with the file you've opened. 
Once Python finds a line that is not indented, it will close the file for you.

## Reading from a file

You can read a line from a file using the `readline()` method on the file variable.

### `file_variable.readline()`

For example, you can read the contents of a file one line at a time:

```python
with open("my_input.txt", "r") as file_to_read:
    line1 = file_to_read.readline()     # reads the 1st line from file_to_read
    line2 = file_to_read.readline()     # reads the 2nd line
    line3 = file_to_read.readline()     # reads the 3rd line
```

Or, you can read all of the lines of the file within a for-loop

```python
with open("my_input.txt", "r") as file_to_read:
    for line in file_to_read:
        print(line)
```

You can combine both methods.
One common pattern:
Read the first line (usually a header) separate from the rest of the document:

```python
with open("my_input.txt", "r") as file_to_read:
    # read the first line of the file
    line1 = file_to_read.readline()

    # read all of the REST of the lines in the file
    for line in file_to_read:
        print(line)
```

#### Example

Imagine your input file `my_input.txt` has the following lines

```text
The limerick packs laughs anatomical
Into space that is quite economical
But the good ones I've seen
Are so seldom clean
And the clean ones are so seldom comical
```

We could read this file with the following code:

```python
with open("my_input.txt", "r") as file_to_read:
    line1 = file_to_read.readline()
    print("Line 1 has been read")
    line2 = file_to_read.readline()
    print("Line 2 has been read")

    for line in file_to_read:
        print(line)
```

**Question**: After this code has been run, what is the console output?

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    Line 1 has been read
    Line 2 has been read
    But the good ones I've seen
    Are so seldom clean
    And the clean ones are so seldom comical
  </code></pre>
</details>

**Question**: After this code has been run, what is stored in the `line1` and `line2` variables?

<details>
  <summary>✅ Solution</summary>
  <pre><code class="language-python">
    line1 == "The limerick packs laughs anatomical"
    line2 == "Into space that is quite economical"
  </code></pre>
</details>

## Writing to a file

There are a few ways to write to a file:

1. using `file_variable.write(msg: str)`: good for writing one string at a time to a file
1. using `file_variable.writelines(lines: list[str])`: good for writing a list of lines all
at once to a file
1. using `print(msg: str, file=file_variable)`: it turns out, you can also use good-old
`print()`, with the optional `file` argument set to a `file_variable`.

Each of these methods will be shown below.

### `file_variable.write()`

To write a single string to a file, the most common method is to use
`file_variable.write()`.

`write()` takes a single `str` parameter and puts the value of that parameter into the
file, without adding any characters.

**NOTE:** by default, this will not create a new line each time you write to the file!
You will need to add `"\n"` to the end of your string:

```python
with open("output_with_lines.txt", "w") as output_file:
    output_file.write("Hello")
    output_file.write("World!")

with open("output_without_lines.txt", "w") as output_file:
    output_file.write("Hello\n")
    output_file.write("World!")
```

The code above results in the following files:

```txt
output_with_lines.txt:
HelloWorld!

output_without_lines.txt:
Hello
World!
```

**What is `\n`**? `"\n"` is called the [newline
character](https://pythonguides.com/create-a-string-with-newline-in-python/#Method_1_Use_Pythons_n_Character).
You can click on the link to learn more -- but, for our course, all you need to know is
that it's the way computer's represent a "new line" in a file. 

### `file_variable.writelines()`

If you need to write many lines to a file at once, a much more convenient method is to use
the `writelines()` function.

Instead of taking a `str` parameter, `writelines()` takes a `list[str]` paramter -- a list
of strings:

```python
lines_list = ["Hello", "World!"]
with open("my_output.txt", "w") as output_file:   # variable is "output_file"
    output_file.writelines(lines_list)
```

The code above results in the following file:

```txt
my_output.txt:
Hello
World!
```

**Note**: you can also print a list of lines to a file just simply using `write()`;
if you use a `for` loop and remember to add the `\n` character.
The code below will have the exact same result as the code above:

```python
lines_list = ["Hello", "World!"]
with open("my_output.txt", "w") as output_file:
    for line in lines_list:
        output_file.write(line + "\n") # NOTE: you will need to add "\n"
```


### `print(msg: str, file=file_variable)`

Finally, you can also use the `print` function we have been using throughout the whole
class.

The difference is, in order to print to a file instead of the console, we need 
to add a `file = file_variable` parameter:

```python
with open("my_output.txt", "w") as output_file:
    print("Hello!", file=output_file)
    print("World!", file=output_file)
```

The code above results in the following file:

```txt
my_output.txt:
Hello
World!
```

**NOTE**: with `print()`, you do *not* need to add a `\n` character. Why?
By default, `print()` always includes a `\n` character!
We can actually change that behavior by using the optional `end` parameter
of the `print` function:

```python
with open("my_output.txt", "w") as output_file:
    # This now works very similarly to the file_variable.write() method.
    print("Hello!\n", file = output_file, end="")
    print("World!", file = output_file, end="")
```


## CSV File Format

In science, much of the data that you will receive will be stored in a _comma separated value_ (`.csv`) file.
These files can be easily generated from Excel, GoogleSheets or any other similar tools.

> **IMPORTANT**: Parsing and reviewing a CSV file _requires_
> that the programmer knows how the data is organized in the file.
> For example, which column contains which data.

Here are the basics of `.csv` files:

- Data is separated into *rows*
- Each row contains *columns*, where the columns are separated by a comma characters (`,`).
- Often, the first line of the file is a "header" row, containing the names of the columns.
  If your file starts with a header row,
  you'll often want to skip that row by reading it before you start reading the rest of
  the file

<div style="page-break-after: always;"></div>

# ReadCSV - Sample

[CSV File Reading and Writing](https://docs.python.org/3/library/csv.html)

## Goals

Learn how to open and read a simple `csv` file and parse the data using either lists or dictionaries.

#### Example Input

Each row contains information about a student, the course that they are taking, and grade that they achieved in that course.

```text
First Name,Last Name,Program,Grade
Mickey,Mouse,Singing,33
Mickey,Mouse,Acting,85
Donald,Duck,Singing,33
Donald,Duck,Anger Management,20
Donald,Duck,Acting,97
Bugs,Bunny,Singing,95
Bugs,Bunny,Acting,100
Bugs,Bunny,Diction,85
Bugs,Bunny,Anger Management,95
Yosemite,Sam,Anger Management,0
Yosemite,Sam,Dragon Management,65
Yosemite,Sam,Acting,100
Elmer,Fudd,Diction,75
Elmer,Fudd,Hunting Law,61
Elmer,Fudd,Acting,81
Elmer,Fudd,Singing,99
```

### Using Python with CSV Files

To read a csv file, open the file in the standard way.

Once your flie has been opened, it needs to be converted to a `csv.reader`.

At this point it can be looped over, just like an ordinary file, with the following exceptions:

- If looping over a `csv.reader` reader, it will return a `list` object, with each element the individual data separated by commas

**Example - csv.reader**

```python
import csv
input_file = "input_file.csv"

with open(input_file, "r") as fh:
  	# create a csv reader, to parse each line as it is being read in
    csv_file: csv.reader = csv.reader(fh)
    for line in csv_file:
        print(line)
```

Output:

**Important** Notice that all the "lines" are actually a `list` AND that the grades are **_strings_** (you will need to convert to numbers if you need them to be numbers)

```text
['First Name', 'Last Name', 'Program', 'Grade']
['Mickey', 'Mouse', 'Singing', '33']
['Mickey', 'Mouse', 'Acting', '85']
['Donald', 'Duck', 'Singing', '33']
...
```

#### Example Problem # 1

Assume the data in an `input.csv` file is the same as the above data

Write a `main` function that:

- Asks user for the filename to read
- Read the file using the `csv.reader` and for each row, print out the first name of each student, as well as the program(s) that they are in.
- Create a list of grades so that we can calculate the average grade

```python
import csv

# constants representing which column index goes with what data
FIRST_NAME = 0
LAST_NAME = 1
PROGRAM = 2
GRADE = 3

# create an empty list for the grades
grades: list[float] = []

def main(input_file):
    with open(input_file, "r") as fh:
        # read the header file now, because it is not part of the "real" data
        fh.readline()

        # create a csv reader so that it can parse the data correctly
        csv_file: csv.reader = csv.reader(fh)

        for line in csv_file:
            # print the individual info
            print(line[FIRST_NAME], line[PROGRAM])

            # append the grade in a new list
            # Remember that the data from the csv file is always a string,
            # so don't forget to convert to a number
            grades.append(float(line[GRADE]))

        # what is the average grade
        print("The average grade is: ", sum(grades) / len(grades))

if __name__ == "__main__":
    filename = input("Enter the csv file to read: ")
    main(filename)
```

Sample output

```text
Enter the csv file to read: input_file.csv
Mickey Singing
Mickey Acting
Donald Singing
Donald Anger Management
Donald Acting
Bugs Singing
Bugs Acting
Bugs Diction
Bugs Anger Management
Yosemite Anger Management
Yosemite Dragon Management
Yosemite Acting
Elmer Diction
Elmer Hunting Law
Elmer Acting
Elmer Singing
The average grade is:  70.25
```

### Coding Challenge

> The answer will be given below, but see if you can do this on your own :)

Write a `main` function that:

- Asks user for the filename to read
- Read the file using the `csv.reader` and, **only for Elmer Fudd**, print out the program name and the grade.
- What is the average grade for Elmer Fudd?

```python
Enter the csv file to read: input_file.csv
Diction        : 75.0
Hunting Law    : 61.0
Acting         : 81.0
Singing        : 99.0
Elmer Fudd's average grade is:  79.0
```

<br>

<br>

<br>

<br>

<br>

<br>

\*\*keep scrolling down for solution

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

\*\*keep scrolling down for solution

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

\*\*keep scrolling down for solution

   <br>

   <br>

   <br>

   <br>

   <br>

```python
import csv

# constants representing which column index goes with what data
FIRST_NAME = 0
LAST_NAME = 1
PROGRAM = 2
GRADE = 3

# create an empty list for the grades
grades: list[float] = []

def main(input_file):
    with open(input_file, "r") as fh:
        # read the header file now, because it is not part of the "real" data
        fh.readline()

        # create a csv reader so that it can parse the data correctly
        csv_file: csv.reader = csv.reader(fh)

        for line in csv_file:
            if line[FIRST_NAME] == "Elmer" and line[LAST_NAME] == "Fudd":
                grade = float(line[GRADE])
                print(f"{line[PROGRAM]:15}: {grade:4.1f}")
                grades.append(grade)

        # what is the average grade
        print("Elmer Fudd's average grade is: ", sum(grades) / len(grades))

if __name__ == "__main__":
    filename = input("Enter the csv file to read: ")
    main(filename)
```
