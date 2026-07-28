## Conditional statements

**Level 1** `if`

1. Complete the following sample of code given the statement below and print a message when the condition is met:

   *If the temperature is below zero, display it's freezing.*

   ```python
   temperature = 3.0
   
   
   ```

   

2. Complete the following sample of code given the statement below and print a message when the condition is met:

   *Display "you are eligible for a scholarship" if the age of a person is between 18 and 25 (inclusive)*

   ```python
   age = int(input("What is your age?"))
   
   
   ```

   

3. Complete the following sample of code given the statement below and print a message when the condition is met:

   *Display "Successful login"  if the password is  "L0ngP@33w0rd34512"* 

   ```python
   password = "easypassword123"
   
   
   ```

   >  Note: This is not how program really authenticate a user. This would be a major vulnerability! Most programs store the [hashed](https://delinea.com/blog/how-do-passwords-work#:~:text=Step%201%20%E2%80%93%20A%20user%20visits,password%20again%20on%20the%20site.) version of the password. 

4. Complete the following sample of code given the statement below and print a message when the condition is met:

   *I will go to school if the bus has arrived*

   ```python
   bus_arrived = True
   
   
   
   ```

5. Complete the following function given the statement below and print a message when the condition is met:

​	*Ensure that the the percentage of increase entered by the user is between -100.0 and +100.0. If it's the case calculate the increase amount*

```python
stock_value = 100_000
increase = float(input("What is the percent increase this year (in %)? "))
increase_amount = ...

```

6. Translate the following lines of code:

   ```python
   r_score = 35
   if r_score >= 30:
       print("You are eligible for the scholarship.")
   
   ```



7. Translate the following lines of code:

   ```python
   temperature = 12.0
   
   if 0 <= temperature < 16:
       print("It is chill outside.")
   ```

8. Trace the output of this program:

   ```python
   day=1
   raining_outside = False
   temperature =14.5
   humidity = 0.80
   
   day+=1
   temperature -=3
   humidity += 0.1
   
   day+=1
   temperature -=2
   humidity += 0.1
   
   if humidity> 0.7 and temperature <=12.0:
       raining_outside = True
   
   day+=1
   temperature -= 2
   humidity/= 2
   
   if raining_outside and humidity < 0.7:
       raining_outside = False
       temperature+=2.0
       
   
   print("The temperature is", temperature )
   
   print("The humidity is", humidity)
   
   print("Is it raining outside?", raining_outside)
       
   ```

   

**Level 2** `if/else` and logical operators `and`, `or`, `not`

1. Complete the following sample of code given the statement below and print a message when the condition is met and another message if it's not met:

   *Display "Successful login"  if the password is  "L0ngP@33w0rd34512", and "Incorrect Login" if the password is incorrect* 

   ```python
   password = "easypassword123"
   
   # To be continued
   ```

   

2. Complete the following sample of code given the statement below and print a message when the condition is met and another message if it's not met: 

   *Display "The store is open" if the current hour is between 8 and 17, otherwise display the store is closed*:

   ```python
   current_hour = 21
   
   # To be continued 
   ```

   

3. Write a function which takes two numbers as input parameters and prints the two numbers in ascending order (no return):

   ```python
   def order_ascend(num1:int, num2:int):
       ...
   
   ```

   

4. Translate the following python code to English:

   ```python
   def print_salary(salary, paygrade, level):
       if paygrade == 7:
           if 0 <= level <= 8:
               salary *= 1.05
           else:
               salary *= 1.04
       else:
           salary *= 1.06
   
       print("Your salary is", salary)
   ```

5. Write a function which displays "Change your car oil" if the user has enough money (needs 80.00$) **and**  if one of these two conditions apply: they reached 5000km **or**  it's been more than 3 months since the last oil change:

   ```python
   def print_change_oil(savings: float, mileage: int, months: int):
       # to be completed
   ```

   

6. Write a function which displays "You are eligible to vote." if the user is a citizen and if their age is above or equal to 18. Otherwise display "You can't vote."

   ```python
   def print_vote_eligibility(age: int, is_citizen: bool):   	
   	# To be completed...
   ```

   

7. Write a function which displays "You can go camping this weekend" if the camping site is available, if it's not raining and they have access to a car. The function must return a boolean if all conditions are met.

   ```python
   def can_go_camping(is_site_available: bool,is_raining:bool, has_car: bool) -> bool:
   	# To be completed...
   ```

   

8. Using `if`, `elif` or`if/else` statement: calculate the precise age of a person while taking into account their day, month and year of birth. Complete the function below

   ```python
   import datetime
   
   def get_age(birth_year,birth_month,birth_day ):
       current_year = datetime.datetime.now().year
       current_month = datetime.datetime.now().month
       current_day = datetime.datetime.now().day
   
       # Complete this function...
      
   ```

   

Test your function by running the following edge cases:

```python
today_year = datetime.datetime.now().year 
today_month = datetime.datetime.now().month
today_day = datetime.datetime.now().day

print(get_age(today_year-34,today_month+1,1))   # This should print 33
print(get_age(today_year-34,test_month, today_day+1)) # This should print 33
print(get_age(today_year, today_month, today_day)) # This should print 0
```







**Level 3** `if/elif/else` and nested conditions

1. Write a program which asks the user for the temperature. The program prints a different message for each of the following condition:

   *If the temperature is:*

   - above 25:  *it's hot outside*
   - below 25 but above 15: *it's pretty warm outside*
   - below 15 but above 0: *it's pretty chill outside*.
   - below zero:  *it's freezing outside*

2. Write a functions which takes three numbers as input parameters and prints them in ascending order. No return:

```python
def order_ascending(num1: int, num2: int, num3: int):
	# to be continued

```





**Answers:**

**Level 1**

1. ```python
   if temperature < 0.0:
   	print("It's freezing outside")
   ```

2. ```python
   age = int(input("What is your age?"))
   
   if 18 <= age <= 25:
       print("You are eligible for a scholarship")
   ```

3. ```python
   password = "easypassword123"
   
   if password == "L0ngP@33w0rd34512":
       print("Correct password!")
   ```

4. ```python
   bus_arrived = True
   if bus_arrived:
       print("I will go to school")
   ```

5. ```python
   stock_value = 100_000
   increase = float(input("What is the percent increase this year (in %)? "))
   increase_amount = 0
   if -100 <= increase <=100:
   	increase_amount = stock_value * (increase/100) 
       
   ```

6. If the person's r -score is above 30, a message saying "You are eligible for a scholarship" is displayed.

7. Display "it's pretty chill outside" if the temperature between 0 and 16°?

8. The temperature is 9.5
   The humidity is 0.5
   Is it raining outside? False

   

**Level 2**

1. ```python
   password = "easypassword123"
   
   if password == "L0ngP@33w0rd34512":
       "Successful login"
   else:
       "Incorrect Login"
   ```

2. ```python
   current_hour = 21
   if 8 <= current_hour <= 17:
       print("The store is open")
   ```

3. ```python
   def order_asend(num1: int, num2: int):
       if num1 < num2:
           print(num1, num2)
       else:
           print(num2, num1)
   ```

4. If a person's paygrade is anything but 7, they get a 6% bonus on their salary. If it is 7, they get a 5% bonus if the level is between 0 and 8, otherwise they get a 4% bonus. 

5. The program asks the user for the number of candies and the number of students then calculates the average number of candies per student only if the number of student is not 0, to avoid a division by zero and a math error. 

6. 

   ```python
   def print_change_oil(savings: float, mileage: int, months: int):
       if (savings > 80.0) and ((mileage >= 5000) or (months >= 3)):
           print("Change your car oil")
   ```

   

7. ```python
   def print_vote_eligibility(age: int, is_citizen: bool): 
       if age >= 18 and is_citizen:
           print("You are eligible to vote")
       else:
           print("You can't vote")
   ```

8. ```python
   def can_go_camping(is_site_available: bool,is_raining:bool, has_car: bool) -> bool:
       if camping_available and not is_raining and has_car: 
           print("You can go camping this weekend")
           return True
       else:
           return False
   ```

   

9. ```python
   import datetime 
   def get_age(birth_year,birth_month,birth_day ):
       current_year = datetime.datetime.now().year
       current_month = datetime.datetime.now().month
       current_day = datetime.datetime.now().day
   
       year_birth = int(input("Please enter your year of birth (YYYY): "))
       month_birth = int(input("Please enter your month of birth (1-12): "))
       day_birth = int(input("Please enter your day of birth (1-31): "))
   
       age = current_year - year_birth
   
       if  current_month < month_birth :
           age -= 1
   
       if (current_month == month_birth) and (current_day < day_birth):
           age-=1
       
       return age
   ```

   

10. ```python
    temperature = float(input("Please enter the temperature: "))
    
    if temperature >= 25.0:
        print("It's hot outside")
    elif temperature >= 15.0:
        print("It's pretty warm outside")
    elif temperature >= 0.0:
        print("It's chill outside")
    else: 
        print("It's freezing outside")
    
    ```

11. Multiple answers possible:

    ```python
    def order_ascending(num1: int, num2: int, num3: int):
        if num1 < num2:
            if num2 < num3:
                print(num1, num2, num3)
            elif num1 < num3:
                print(num1, num3, num2)
            else:
                print(num3, num1, num2)
        elif num1 < num3:
            print(num2, num1, num3)
        elif num2 < num3:
            print(num2, num3, num1)
        else:
            print(num3, num2, num1)
    ```

     

​	Other possible answer:

​	

```python
def order_ascending(num1: int, num2: int, num3: int):

    if num1 < num2 and num2 < num3:
        print(num1, num2, num3)
    elif num1 < num2 and num3 < num2:
        print(num1, num3, num2)
    elif num2 < num1 and num1 < num3:
        print(num2, num1, num3)
    elif num2 < num1 and num3 < num1:
        print(num2, num3, num1)
    elif num3 < num2 and num2 < num1:
        print(num3, num2, num1)
    else:
        print(num3,num1,num2)
```







