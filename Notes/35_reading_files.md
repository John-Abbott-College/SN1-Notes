# Reading a File



## To "open" a file for reading or writing

SYNTAX: `variable_name = open(file_name, access_type)`

where:

* `variable_name` is just a name of a variable that you will reference later
* `file_name` is the name of a file on your computer
* `access_type` can be:
  * `r` if you want to read the file, or
  * `w` if you want to write to the file

```python
fh = open("my_input.txt","r")		# open a file for reading
wf = open("my_other.txt", "w")  # open file for writing
```

### Reading from a file

You can read the contents of a file one line at a time

```python
fh = open("my_input.txt","r")
line1 = fh.readline()
line2 = fh.readline()
line3 = fh.readline()
```

Or, you can read all of the lines of the file within a for-loop

```python
fh = open("my_input.txt","r") 

for line in fh:
  print(line)
  
# close the file once you are done
fh.close()
```

Or, even a mixture of both

```python
fh = open("my_input.txt","r") 

# read the first line of the file
line1 = fh.readline()

# read all of the REST of the lines in the file
for line in fh:
  print(line)
  
# close the file once you are done
fh.close()
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
fh = open("my_input.txt")
line1 = fh.readline()
print("Line 1 has been read")
line2 = fh.readline()
print("Line 2 has been read")

for line in fh:
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

### Writing to a file

Once the file has been openned, you can use `print` to write stuff to your file.  

You will need to add "`file=variable`" (where *variable* is the name you used when you openned the file)

```python
with open("my_input.txt","r") as fh:   # variable is "fh"
  print("Hello World!", file=fh)
```

```python
a_list = [1,1,2,3,5,8,13]
with open("my_output.txt", "w") as fh:
  for value in a_list:
    print(value, file=fh)
```

### CSV File

So, reading a csv file can be done just like an ordinary file, but it is not very useful.

**CSV File**

```text
,,,,,,,,,,,,,,,,,,,,,,,,,,,
"Current in the circuit, I (A)","Voltage of the battery, Vbatt (V)","Load resistance, Rl (Ω)","Power delivered by the battery to the load, Pdelivered exp (W)","Theoretical power delivered by the battery, Pdelivered theo (W)","Electromotive force of the battery, ε (V)","Power provided by the battery, Pprovided (W)","Efficency of the battery, E (%)",,,,,,,,,,,,,,,,,,,,
0.48,0.861,1.79375,0.41328,0.413340761950187,6.53028,3.1345344,13.1847332733053,,,,,,,,,,,,,,,,,,,,
0.478,0.862,1.80334728033473,0.412036,0.412096536343494,6.507658,3.110660524,13.2459327149644,,,,,,,,,,,,,,,,,,,,
```

Blech! Reading one line at a time just gives a bunch of stuff with commas.

I want it sorted by columns!!


<div style="page-break-after: always;"></div>


# ReadCSV - Simple

[CSV File Reading and Writing](https://docs.python.org/3/library/csv.html)

## Goals

Learn how to open and read a simple `csv` file and parse the data using either lists or dictionaries.

## Context

In science, much of the data that you will receive will be stored in a *comma separated value* (CSV) file.  These files can be easily generated from Excel, GoogleSheets or any other similar tools.

> **IMPORTANT**: Parsing and reviewing a CSV file *requires* that the programmer knows how the data is organized in the file.  For example, which column contains which data.

### CSV File Format

There are many variations on the rules, but the most standard is:

* Data is separated by rows,
* Each row contains information about one thing, with the specific bits of information separated by a comma.

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

Once your flie has been opened, it needs to be converted to either a standard `csv.reader`.

At this point it can be looped over, just like an ordinary file, with the following exceptions:

* If looping over a `csv.reader` reader, it will return a `list` object, with each element the individual data separated by commas

**Example - csv.reader**

```python
import csv
input_file = "input_file.csv"

with open(input_file,"r") as fh:
  
  	# create a csv reader, to parse the line as it is being read in
    csv_file:csv.reader = csv.reader(fh)
    for line in csv_file:
      print(line)
```

Output:

**Important** Notice that all the "lines" are actually a `list` AND that the grades are ***strings*** (you will need to convert to numbers if you need them to be numbers)

```text
['First Name', 'Last Name', 'Program', 'Grade']
['Mickey', 'Mouse', 'Singing', '33']
['Mickey', 'Mouse', 'Acting', '85']
['Donald', 'Duck', 'Singing', '33']
...
```

#### Example Problem # 1

Assume the data in  an `input.csv` file is the same as the above data

Write a `main` function that:

* Asks user for the filename to read
* Read the file using the `csv.reader` and for each row, print out the first name of each student, as well as the program(s) that they are in.
* Create a list of grades so that we can calculate the average grade

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
    fh = open(input_file, "r")

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
    print("The average grade is: ", sum(grades)/len(grades))

if __name__ == "__main__":
    input_file = input("Enter the csv file to read: ")
    main(input_file)
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

* Asks user for the filename to read
* Read the file using the `csv.reader` and, **only for Elmer Fudd**, print out the program name and the grade.
* What is the average grade for Elmer Fudd?

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

**keep scrolling down for solution


   <br>

   <br>

   <br>


   <br>

   <br>

   <br>

   <br>

   <br>

   <br>

**keep scrolling down for solution

   <br>

   <br>

   <br>


   <br>

   <br>

   <br>

   <br>

**keep scrolling down for solution

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
    fh = open(input_file, "r")

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
    print("Elmer Fudd's average grade is: ", sum(grades)/len(grades))

if __name__ == "__main__":
    input_file = input("Enter the csv file to read: ")
    main(input_file)
```

