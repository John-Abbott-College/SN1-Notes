## Input/output functions

1. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = input()
   print(x + y)
   ```

2. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = int(input())
   y = int(input())
   
   print(x + y)
   ```



3. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = int(input())
   print(x * y)
   ```

4. Fix the mistakes in the programs below

   ```python
   num1 = input("Please enter a number: ")
   num3 = input(3)
   
   print(num1 + num2)
   ```
   
   **Example of Expected output:**
   
   ```text
   Please enter a number: 2.5
   Please enter another number: 3.5
   6.0
   ```



5. Remove unnecessary calls to the `input()` function. This program simply displays the sum of 10 and 15:

   ```python
   num1 = input(10)
   num2 = input(15)
   print(num1 + num2)
   ```

   

6. Fix the mistakes in the program below, which is suppose to calculate the average of three grades (24, 25, 20) **without** asking input from the user:

   ```python
   grade1 = input(24)
   grade2 = input(25)
   grade3 = input(20)
   
   average = input((grade1 + grade2 + grade3)/3)
   ```

   



7. Fix the mistakes in the program below:

```python
num = 123
print The number is num
```

**Expected output:**

```text
The number is 123
```



8. Fix the mistakes in the program below:

```python
num1 = 123
num2 = 456
num3 = 789.0

print("The numbers are " + num1 + num2 + num3)
```

**Expected output:**

```text
The numbers are 123 456 789.0
```



9. Fix the mistakes in the program below:

```python
num1 = 1
num2 = 2

average = print((num1+num2)/2)
```



10. Fix the mistakes in the program below which is suppose to print the salary of a person before bonus and the salary after the bonus:

```python
salary = 70_000
print("The salary before bonus: ") + print(salary)

bonus = 1_500
print("The salary after bonus: ") + print(bonus) + print(salary)

```



11. Robert a beginner programmer is writing a program which asks the user to sign up to an account. He needs to ask the following information:

    - First Name

    - Last Name

    - Day of Birth

    - Month of Birth

    - Year of Birth

    - Email address 

    - Password

    - Postal Code

    - Home address 

      

Robert has a hard time understanding the difference between himself the **programmer**  and a **user** who is running his program. Correct his program:

```python
first_name = input("Robert")
last_name = input("Henry")
day_birth = int(input("23"))
month_birth = int(input("11"))
year_birth = int(input("2007"))
email = input("rober@gmail.com")
password = input("easypassword123")
postal_code = input("H1S1Y3")
home_address = input("1 Dragon Street")
```





## **Answers:**



1. "24"
2. 6
3. "2222"

4. 
```python
num1 = float(input("Please enter a number: "))
num2 = float(input("Please enter another number: "))
print(num1+ num2)
```
5.
```python
num1 = 10
num2 = 15
print(num1 + num2)
```
6.
```python
grade1 = 24
grade2 = 25
grade3 = 20

average = (grade1 + grade2 + grade3)/3
```
7.Possible answer:
```python
num = 123
print("The number is", num)
```

8. Possible answer:
```python
num1 = 123
num2 = 456
num3 = 789.0

print("The numbers are", num1 , num2 , num3)
```

9. 
```python
num1 = 1
num2 = 2

average = (num1+num2)/2
print(average)
```

10.
```python
salary = 70_000
print("The salary before bonus:", salary)

bonus = 1_500
print("The salary after bonus:", bonus + salary)
```
