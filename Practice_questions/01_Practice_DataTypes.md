## Data Types

We highly recommend you work on the exercises below with pen and paper to practice for quizzes and exams. 



1. Specify the data type printed at the end of each program:

   1. ```python
      print(type(10))
      ```

      

   2. ```python
      import math
      PI  = math.pi
      print(type(PI))
      ```

      

   3. ```python
      print(type(3e-5))
      ```

      

   4. ```python
      print(type("Hi"))
      ```

      

   5. ```python
      value = "2"
      value2 = int(value)
      print(type(value2))
      ```

      

   6. ```python
      name = input("What is your name?")
      print(type(name))
      ```

      

   7. ```python
      age = 25
      is_legal_age = (age>=18)
      print(type(is_legal_age))
      ```

      

   8. ```python
      grade = 24
      total = 25
      ratio = grade / total
      print(type(ratio))
      ```

      

   9. ```python
      num_classrooms = 5
      pcs_per_classroom = 22
      total_pcs = num_classrooms * pcs_per_classroom
      print(type(total_pcs))
      ```

      

   10. ```python
       var1 = 1
       var2 = 2
       var3 = "3"
       
       print(type(var1 + var2 + var3))
       ```

       

   11. ```python
       temperature = 22
       is_freezing = (temperature < 0)
       print(type(is_freezing))
       ```


2. Fix the mistakes in the program below:

   ```python
   num1 = 2
   num2 = "4"
   sum_val = num1 + num2
   ```

3. Fix the calculation error in the program below which is suppose to calculate a simple average of grades:

   ```python
   grade1 = 25
   grade2 = 26
   
   average = int((grade1+grade2)/2)
   ```

4. Fix the errors below:

   ```python
   school = John Abbott 
   street_name =  275 Rue Lakeshore Road
   street_number = 21  
   neighbor_number = street_number + 2
   phone_number  = (514)457-5036
   year_creation = 1971
   school_age = 2024 - year_creation
   address = street_number + street_name
   ```

   

5. Remove unnecessary conversions in the program below:

   ```python
   name = str("Bob")
   age = int(25)
   height = float(6.2)
   print(str(name) + "'s age is " + str(age), "and his height is",str(height))
   ```
   
   

## **Answers**

1.1 `int`
1.2 `float`
1.3 `float`
1.4 `str`
1.5 `int`
1.6 `str`
1.7 `bool`
1.8 `float`
1.9 `int`
1.10 Error, cannot use + on numeric data types with str.
1.11 `bool`

2. 
```python
num1 = 2
num2 = "4"
sum_val = num1 + int(num2)
```

3. 
```python
grade1 = 25
grade2 = 26

average = (grade1+grade2)/2
```

4.
```python
school = "John Abbott" 
street_name =  "275 Rue Lakeshore Road"
street_number = 21  
neighbor_number = street_number + 2
phone_number  = "(514)457-5036"
year_creation = 1971
school_age = 2024 - year_creation
address = str(street_number) + street_name
```

5.
```python
name = "Bob"
age = 25
height = 6.2
print(str(name) + "'s age is " + str(age), "and his height is", height)
```
