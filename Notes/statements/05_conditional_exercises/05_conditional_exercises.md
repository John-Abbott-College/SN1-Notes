## Conditional statements

### Level 1: `if`

1. Complete the following sample of code given the statement below and print a message when the condition is met:

   *If the temperature is below zero, display it's freezing.*

   ```python
   temperature = 3.0

   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>What logical operator is needed to express "less than"?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      if temperature < 0:
        print("It's freezing outside")
    </code></pre>
  </details>

2. Complete the following sample of code given the statement below and print a message when the condition is met:

   *Display "you are eligible for a scholarship" if the age of a person is between 18 and 25 (inclusive)*

   ```python
   age = int(input("What is your age?"))

   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>What logical operators are needed to express "less than or equal to" and "greater than or equal to"?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      temperature = 3.0
      if 18 <= age <= 25:
        print("You are eligible for a scholarship")
    </code></pre>
  </details>

3. Complete the following sample of code given the statement below and print a message when the condition is met:

   *Display "Successful login"  if the password is  "L0ngP@33w0rd34512"* 

   ```python
   password = "easypassword123"

   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>What logical operator is needed to express "equal to"?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      if password == "L0ngP@33w0rd34512":
        print("Successful login")
    </code></pre>
  </details>

   >  Note: This is not really how passwords are used in programs -- writing your password down as a variable in a program is a really bad idea, because everyone who can read your code can read your password! Most programs store the **hashed** version of the password -- [click this link](https://delinea.com/blog/how-do-passwords-work) if you want to learn more.

4. Complete the following sample of code given the statement below and print a message when the condition is met:

   *I will go to school if the bus has arrived*

   ```python
   bus_arrived = True

   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>How can you use a boolean variable in an if statement?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      if bus_arrived:
          print("I will go to school")
    </code></pre>
  </details>


5. Complete the following function given the statement below and print a message when the condition is met:

    *Ensure that the percentage of increase entered by the user is between -100.0 and +100.0. If it's the case calculate the increase amount*

  ```python
  stock_value = 100_000
  increase_percent = float(input("What is the percent increase this year (in %)? "))
  increase_amount = 0

  # Your answer goes here
  ```

  <details>
    <summary>👀 Hint</summary>
    <p>Here you have to test a condition and calculate a percentage, but only if the condition is true.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      increase_amount = 0
      if -100 <= increase <=100:
        increase_amount = stock_value * (increase/100)
    </code></pre>
  </details>


6. Translate (to English) the meaning of the following lines of code. 

   ```python
   r_score = 35
   if r_score >= 30:
       print("You are eligible for the scholarship.")
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Your answer should be in the form: If (some condition is met), then (some event takes place).</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      If the r-score is above 30, a message saying "You are eligible for a scholarship" is displayed.
    </code></pre>
  </details>


7. Translate the following lines of code:

   ```python
   temperature = 12.0
   
   if 0 <= temperature < 16:
       print("It is chill outside.")
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Take care to be precise about whether something is strictly less/greater than, or less/greater than or equal to (it's different!)</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      If the temperature is greater than or equal to 0, or if the temperature is less than 16, a message saying "It is chill outside." is displayed.
    </code></pre>
  </details>


8. Write down the messages that are printed at the end of this program.

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

  <details>
    <summary>👀 Hint</summary>
    <p>Make sure you start from the top and update the values of the variables as each assignment/arithmetic operator is applied, in order to get the correct answer at the end.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      The temperature is 9.5
      The humidity is 0.5
      Is it raining outside? False
    </code></pre>
  </details>

### Level 2: `if/else` and operators `and`, `or`, `not`

1. Complete the following sample of code given the statement below and print a message when the condition is met and another message if it's not met:

   *Display "Successful login"  if the password is  "L0ngP@33w0rd34512", and "Unsuccessful login" if the password is incorrect* 

   ```python
   password = "easypassword123"
   
   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Use <code>if</code> and <code>else</code>!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      password = "easypassword123"
      if password == "L0ngP@33w0rd34512":
          "Successful login"
      else:
          "Unsuccessful login"
    </code></pre>
  </details>

2. Complete the following sample of code given the statement below and print a message when the condition is met and another message if it's not met: 

   *Display "The store is open" if the current hour is between 8 and 17, otherwise display the store is closed*:

   ```python
   current_hour = 21

   # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Use <code>if</code> and <code>else</code>!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      if 8 <= current_hour <= 17:
          print("The store is open")
      else:
          print("The store is not open")
      </code></pre>
  </details>


3. Write a function which takes two numbers as input parameters and prints the two numbers in ascending order (no return):

   ```python
   def order_ascend(num1:int, num2:int):

      # Your answer goes here
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>You should write a conditional statement that can print the two numbers in a different order, depending on which number is bigger of the two.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def order_ascending(num1: int, num2: int):
          if num1 < num2:
              print(num1, num2)
          else:
              print(num2, num1)
        </code></pre>
  </details>


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

  <details>
    <summary>👀 Hint</summary>
    <p>Your answer should be in the form: If (condition) then (some event occurs), otherwise (other event occurs), etc.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
      If the paygrade is 7, the salary is determined by the level. If the level is between 0 and 8, then the salary gets a 5% bonus, otherwise the salary gets a 4% bonus. If the paygrade is not 7, the salary gets a 6% bonus.
  </details>


5. Write a function which displays "Change your car oil" if the user has enough money (needs 80.00$) **and**  if one of these two conditions apply: they reached 5000km **or**  it's been more than 3 months since the last oil change:

   ```python
   def print_change_oil(savings: float, mileage: int, months: int):
       # to be completed
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>You can chain multiple conditions in one if statement using <code>and</code>/<code>or</code>. You can use brackets to control the order of logical operations in a sequence of operations.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def print_change_oil(savings: float, mileage: int, months: int):
          if (savings > 80.0) and ((mileage >= 5000) or (months >= 3)):
              print("Change your car oil")
    </code></pre>
  </details>



6. Write a function which displays "You are eligible to vote." if the user is a citizen and if their age is above or equal to 18. Otherwise display "You can't vote."

   ```python
   def print_vote_eligibility(age: int, is_citizen: bool):   	
   	# To be completed...
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>You can use boolean variables directly in an if statement, and can combine them with logical operations using <code>and</code>/<code>or</code>.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def print_vote_eligibility(age: int, is_citizen: bool): 
          if age >= 18 and is_citizen:
              print("You are eligible to vote")
          else:
              print("You can't vote")
    </code></pre>
  </details>


7. Write a function which displays "You can go camping this weekend" if the camping site is available, if it's not raining and they have access to a car. The function must return a boolean if all conditions are met.

   ```python
   def can_go_camping(is_site_available: bool,is_raining:bool, has_car: bool) -> bool:
   	# To be completed...
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Use the <code>return</code> statement to control what a function returns.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      def can_go_camping(is_site_available: bool, is_raining:bool, has_car: bool) -> bool:
          if camping_available and not is_raining and has_car: 
              print("You can go camping this weekend")
              return True
          else:
              return False
    </code></pre>
  </details>


### Level 3: `if/elif/else` and nested conditions

1. Write a program which asks the user for the temperature. The program prints a different message for each of the following condition:

   *If the temperature is:*

   - above 25:  *it's hot outside*
   - below 25 but above 15: *it's pretty warm outside*
   - below 15 but above 0: *it's pretty chill outside*.
   - below zero:  *it's freezing outside*

  <details>
    <summary>👀 Hint</summary>
    <p>Make sure you start from the top and update the values of the variables as each assignment/arithmetic operator is applied, in order to get the correct answer at the end.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      temperature = float(input("Please enter the temperature: "))
      if temperature >= 25.0:
          print("It's hot outside")
      elif temperature >= 15.0:
          print("It's pretty warm outside")
      elif temperature >= 0.0:
          print("It's chill outside")
      else: 
          print("It's freezing outside")
    </code></pre>
  </details>


2. Write a functions which takes three numbers as input parameters and prints them in ascending order. No return:

  ```python
  def order_ascending(num1: int, num2: int, num3: int):
    # Your answer goes here

  ```

  <details>
    <summary>👀 Hint</summary>
    <p>Make sure you start from the top and update the values of the variables as each assignment/arithmetic operator is applied, in order to get the correct answer at the end.</p>
  </details>
  <details>
    <summary>✅ One possible solution</summary>
    <pre><code class="language-python">
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
    </code></pre>
  </details>
  <details>
    <summary>✅ Another possible solution</summary>
    <pre><code class="language-python">
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
    </code></pre>
  </details>
