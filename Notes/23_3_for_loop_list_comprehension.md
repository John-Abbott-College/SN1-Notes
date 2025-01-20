# List comprehensions



Creating a list can be tedious if adding an element one by one. Now that you know more about for loops. We will introduce you to a way of creating lists in a single line of code, using *list comprehensions*



```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

my_list_2 = [i for i in range(10)]  #creates the same list as above

print(my_list)
print(my_list_2)
```



A list comprehension follows the following structure:

-  Uses `[]` 
- Contains an expression 
- Contains a for loop which iterates over a collection: 

<img src="Images/list_comprehension_1.png" Height="70"/>



**Example 1:** Creating the squared values of 0,1,2,3,.....,10

Old method:

```python
squares = []
for i in range(10):
	squares.append(i**2)
print(squares)
```

List comprehension:

```python
squares = [i**2 for i in range(10)]
print(squares)
```





**Challenge 1:** An object is moving at a constant speed of 28.0 m/s over 10 seconds. It's position at t=0s is 10m . Create a list with the corresponding positions for every second and print the last position:

```python
times = [0,1,2,3,4,5,6,6,7,8,9,10]

velocity = 28.0
position_0 = 10

positions = #Type your list comprehension here....
```

[Solution](/Notes/04_for_loop_list_comprehension#Solutions)





You can also use conditionals to create more complex expressions:



**Example 2: **A teacher has stored the students grades in an array and wishes to create a second array with a string "pass" or "fail" for each student based on his/her grade.

**Old method:**

```python
student_grades = [78,95,68,45,55,100,92,45]
results = []

for grade in student_grades:
	if grade >=60:
		results.append("pass")
    else:
    	results.append("fail")
print(results)
```

**With list comprehensions:**

```python
student_grades = [78,95,68,45,55,100,92,45]
results = ["pass" if grade >= 60 else "fail" for grade in student_grades]
print(results)
```



List comprehensions can also help create a subset of a collection by adding a condition on the element being iterated: 

<img src="Images/list_comprehension_2.png" Height="70"/>

**Example 3** : The teacher would like to create a subset of grades which are between 60 and 80:

**Old method** 

```python
student_grades = [78,95,68,45,55,100,92,45]
subset_grades = []

for grade in student_grades:
	if grade >= 60 and grade <= 80:
		subset_grades.append(grade)
```

**List** **comprehension**

```python
student_grades = [78,95,68,45,55,100,92,39]
subset_grades = [grade for grade in student_grades if grade >= 60 and grade <= 80]
print(subset_grades)
```



Finally, a list comprehension can also help you iterate over two collections at once:

<img src="Images/list_comprehension_3.png" Height="50"/>



```python
student_grades = [78,95,68,45,55,100,92,39]
student_names =["Anny", "Bobby", "Franky","Billy","Sally","Ronny", "Chilly","Bibby"]

students_failing = [name for (name,grade) in zip(student_names,student_grades) if grade < 60]
```



**Scalar multiplication of vectors**

```python
my_vector = [1,2,3]
print(3 * my_vector) # Output [1,2,3,1,2,3,1,2,3]
```

**List comprehension**

```python
my_vector = [1,2,3]
my_vector_mult = [3*i for i in my_vector]
print(my_vector_mult)  #Output: [3,6,9]
```



**Adding two vectors**

```python
vect_a = [1,3]
vect_b = [5,1]
print(vect_a + vect_b) # Output [1,3,5,1]
```

**List comprehension**

```python
result_vect = [x+y for (x,y) in zip(vect_a, vect_b)]
print(result_vect) # Output: [6,4]
```

> 
>
> Note: There is a more efficient way of creating the position list, by using a module called `numpy`. We will learn more about it later in the course. 



### Solutions

Challenge1

```python
times = [0,1,2,3,4,5,6,6,7,8,9,10]

velocity = 28.0
position_0 = 10

positions = [velocity*dt + position_0 for dt in times]

print(positions[-1])
```

