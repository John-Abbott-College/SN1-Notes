# Lists

## Practice Questions

#### Level 1 - Creating and Accessing

1. Looping

   **Part 1**

   Start with a list `a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]`

   For each element in the list, print it.

   **Part 2**

   Start with a list `a=[5, 19.3, -8.7, 100.234, 6]`

   For each number in the above list, print it on a line.  Make sure that all the numbers line up appropriately by using the correct f-string formatting.

   

2. Random Access

   Start with a list `a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]`

   **Part 1**

   Using the above list and *without* a  `for-loop`, write every 1st, 3rd, 5th, 7th and 9th element on the same line.

   **Part 2**

   Using the above list and a `for-loop` print every second element on a separate line

   *hint: use `range(start,end,step)` where `start`, `end`, `step` are properly set*



3. Manipulating every element

   Start with a list `a = [1, 7, 2, -3, 5, 9]`

   Loop over this list, and calculate the sum of all the squares of each element in the list.  Print the sum

   

   $$ \text{total} = \sum_{i=0}^5 a_i^2$$ 
   
   
   
3. Creating

   **Part 1**

   Ask the user how many grades they want to enter.

   Ask user for the grades, one at a time

   Save all the grades in a single list
   
   **Part 2**
   
   Create a list with the following values (1, 3, 5)



#### Level 2 - Applying list functions

1. You have a list of names 'sandy', 'bob', 'bette', 'sally', 'rachel'.

   Print the name in sorted order, one per line.  Do NOT modify the list!





## Answers

#### Level 1 - Creating and Accessing

1.

```python
a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]

for element in a:
  print(element)

a=[5, 19.3, -8.7, 100.234, 6]
for element in a:
  print(f"{element:10.3f}")
```



2.

```python
a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]

# part 1
print (a[0], a[2], a[4], a[6], a[8])

# Part 2
for index in range(1,len(a),2):
  print(a[index])
```



3. 

```python 
a = [1, 7, 2, -3, 5, 9]
total = 0
for element in a:
  total = total + element**2
print(total)
```



4.

```python
# part 1

grades = []
n: int = int( input("How many grades do you want to enter? "))
for i in range(n):
  grade: float = float( input(f"Enter grade for student {i+1}: "))
  grades.append(grade)
  
# part 2
a = [1, 3, 5]
```



#### Level 2 - Applying list functions

```python
a=['sandy', 'bob', 'bette', 'sally', 'rachel']
for name in sorted(a):
  print(name)
```

