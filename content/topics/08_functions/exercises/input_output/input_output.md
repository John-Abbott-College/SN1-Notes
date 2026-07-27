## Input/output functions

1. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = input()
   print(x + y)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>What is the type of data returned by the <code>input()</code> function, and how does the type affect the behavior of the <code>+</code> operator?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      24
    </code></pre>
  </details>


2. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = int(input())
   y = int(input())

   print(x + y)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>How does the <code>int()</code> function change the data, and how does that affect the <code>+</code> operator?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      6
    </code></pre>
  </details>


3. What is the output of the following snippet if the user enters two lines containing 2 and 4 respectively?

   ```python
   x = input()
   y = int(input())
   print(x * y)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Pay attention to the operator being used, and the data types on each side of the operator.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      2222
    </code></pre>
  </details>


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

  <details>
    <summary>👀 Hint</summary>
    <p>There is more than one issue to fix in the code above. Pay attention to the <em>prompt</em> parameter provided to the <code>input</code> function -- what should it be on each line? Also, pay attention to the type of data required in the example output.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      num1 = float(input("Please enter a number: "))
      num2 = float(input("Please enter another number: "))
      print(num1+ num2)
    </code></pre>
  </details>

5. Remove unnecessary calls to the `input()` function. This program simply displays the sum of 10 and 15:

   ```python
   num1 = input(10)
   num2 = input(15)
   print(num1 + num2)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>If you're struggling, this problem is simpler than you think.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      num1 = 10
      num2 = 15
      print(num1 + num2)
    </code></pre>
  </details>

6. Fix the mistakes in the program below, which is suppose to calculate the average of three grades (24, 25, 20) **without** asking input from the user:

   ```python
   grade1 = input(24)
   grade2 = input(25)
   grade3 = input(20)

   average = input((grade1 + grade2 + grade3)/3)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>If you're struggling, this problem is simpler than you think.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      grade1 = 24
      grade2 = 25
      grade3 = 20
      average = (grade1 + grade2 + grade3)/3
    </code></pre>
  </details>

7. Fix the mistakes in the program below:

  ```python
  num = 123
  print The number is num
  ```

    **Expected output:**

    ```text
    The number is 123
    ```

  <details>
    <summary>👀 Hint</summary>
    <p>This is a syntax problem -- how do you tell the print function what statements it should print?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      # One possible answer
      num = 123
      print("The number is", num)
    </code></pre>
  </details>



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

  <details>
    <summary>👀 Hint</summary>
    <p>How do you put the values of variables directly into a print statement?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      num1 = 123
      num2 = 456
      num3 = 789.0
      # One possible answer using print parameters
      print("The numbers are", num1 , num2 , num3)
      # Another possible answer using an f-string
      print(f"The numbers are {num1} {num2} {num3}")
    </code></pre>
  </details>

9. Fix the mistakes in the program below:

  ```python
  num1 = 1
  num2 = 2

  average = print((num1+num2)/2)
  ```

  <details>
    <summary>👀 Hint</summary>
    <p>Remember that the <code>print</code> function doesn't return any values!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      num1 = 1
      num2 = 2
      average = (num1+num2)/2
      print(average)
    </code></pre>
  </details>

10. Fix the mistakes in the program below which is suppose to print the salary of a person before bonus and the salary after the bonus:

  ```python
  salary = 70_000
  print("The salary before bonus: ") + print(salary)

  bonus = 1_500
  print("The salary after bonus: ") + print(bonus) + print(salary)

  ```

  <details>
    <summary>👀 Hint</summary>
    <p>Remember that the <code>print</code> function does not return any values, and so you cannot add the result of calling the <code>print</code> function</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      # One possible solution
      salary = 70_000
      print("The salary before bonus:", salary)
      bonus = 1_500
      print("The salary after bonus:", bonus + salary)
    </code></pre>
  </details>
