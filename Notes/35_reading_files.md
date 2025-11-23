# Reading/Writing Files

## Opening Files

Files are like books: before you can read from or write into them you must open them! (When you're finished you should close them too.)

SYNTAX: `variable_name = open(file_name, access_type)`

where:

- `variable_name` is the name of a variable that you will use later
- `file_name` is the name (or *path*) of a file on your computer
- `access_type` can be:
  - `r` if you want to read the file, or
  - `a` if you want to append (add) to a file
  - `w` if you want to write to the file (*but it will erase everything in the file first!*)

```python
file_to_read = open("my_input.txt", "r")	# open a file for reading
...do stuff...
file_to_read.close()
```
or
```python
writeable_file = open("my_output.txt", "w")  # open file for writing
...do stuff...
writeable_file.close()
```

Bad Things™ may happen if you forget to close a file when you're finished with it so Python has a way of opening files that guarantees that the file will automatically get closed when you're finished with it. This uses a Python statement called **with**:

```python
with open("my_input.txt", "r") as file_to_read:
    ...do stuff...
```
or
```python
with open("my_output.txt", "w") as writeable_file:
    ...do stuff...
```

Like other blocks in Python (if-else/for/def) you must indent all of the lines of code which will be dealing with the file you've opened. Once Python finds a line that is not indented, it will close the file for you.

## Reading from a file

You can read the contents of a file one line at a time

```python
with open("my_input.txt", "r") as file_to_read:
    line1 = file_to_read.readline()     # reads the 1st line
    line2 = file_to_read.readline()     # reads the 2nd line
    line3 = file_to_read.readline()     # reads the 3rd line
```

Or, you can read all of the lines of the file within a for-loop

```python
with open("my_input.txt", "r") as file_to_read:
    for line in file_to_read:
        print(line)
```

Or, even a mixture of both

```python
with open("my_input.txt", "r") as file_to_read:
    # read the first line of the file
    line1 = file_to_read.readline()

    # read all of the REST of the lines in the file
    for line in file_to_read:
        print(line)
```

**Example**

Imagine your input file `my_input.txt` has the following lines

```text
The limerick packs laughs anatomical
Into space that is quite economical
But the good ones I've seen
Are so seldom clean
And the clean ones are so seldom comical
```

code:

```python
with open("my_input.txt", "r") as file_to_read:
    line1 = file_to_read.readline()
    print("Line 1 has been read")
    line2 = file_to_read.readline()
    print("Line 2 has been read")

    for line in file_to_read:
        print(line)
```

Output:

```text
Line 1 has been read
Line 2 has been read
But the good ones I've seen
Are so seldom clean
And the clean ones are so seldom comical
```

## Writing to a file

Once the file has been opened, you can use `print` to write stuff to your file.

You will need to add "`file = variable`" (where _variable_ is the name you used when you opened the file)

```python
with open("my_output.txt", "w") as output_file:   # variable is "output_file"
  print("Hello World!", file = output_file)
```

```python
a_list = [1, 1, 2, 3, 5, 8, 13]
with open("my_output.txt", "w") as output_file:
  for value in a_list:
    print(value, file = output_file)
```

## CSV File Format

In science, much of the data that you will receive will be stored in a _comma separated value_ (CSV) file. These files can be easily generated from Excel, GoogleSheets or any other similar tools.

> **IMPORTANT**: Parsing and reviewing a CSV file _requires_ that the programmer knows how the data is organized in the file. For example, which column contains which data.

There are many variations on the rules, but the most standard is:

- Data is separated into rows
- Each row contains information about one thing, with the specific bits of information separated by a comma.

Reading a csv file can be done just like an ordinary file, but it is not very convenient because reading one line at a time just gives a bunch of stuff with commas.

```text
,,,,,,,,,,,,,,,,,,,,,,,,,,,
"Current in the circuit, I (A)","Voltage of the battery, Vbatt (V)","Load resistance, Rl (Ω)","Power delivered by the battery to the load, Pdelivered exp (W)","Theoretical power delivered by the battery, Pdelivered theo (W)","Electromotive force of the battery, ε (V)","Power provided by the battery, Pprovided (W)","Efficency of the battery, E (%)",,,,,,,,,,,,,,,,,,,,
0.48,0.861,1.79375,0.41328,0.413340761950187,6.53028,3.1345344,13.1847332733053,,,,,,,,,,,,,,,,,,,,
0.478,0.862,1.80334728033473,0.412036,0.412096536343494,6.507658,3.110660524,13.2459327149644,,,,,,,,,,,,,,,,,,,,
```

I want it split into columns!!

<div style="page-break-after: always;"></div>

# ReadCSV - Sample

[CSV File Reading and Writing](https://docs.python.org/3/library/csv.html)

## Goals

Learn how to open and read a simple `csv` file and parse the data using either lists or dictionaries.

#### Example Input

Each row contains information about a student, the course that they are taking, and grade that they achieved in that course. Often, the first line of the file holds strings which are the names of the "columns". If your file starts with the column names then you'll want to skip that row by reading it before you start reading and storing the data rows.

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
