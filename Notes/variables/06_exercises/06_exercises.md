## Data Types

We highly recommend you work on the exercises below with pen and paper to practice for quizzes and exams.

> NOTE: the `type()` function in python returns a tag denoting the type of data given to it as an argument.
>
> For example:
>   - `type(1)` returns `<class 'int'>`
>   - `type(2.0)` returns `<class 'float'>`
>   - `type("hello")` returns `<class 'str'>`
>   - `type(True)` returns `<class 'bool'>`

1. Specify the data type printed at the end of each program:

  <details>
    <summary>👀 Hint</summary>
    <p>Make sure you read the NOTE above about the <code>type()</code> function!</p>
  </details>

   1. ```python
      print(type(10))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class 'int'
    </code></pre>
  </details>

   2. ```python
      import math
      PI  = math.pi
      print(type(PI))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `float`
    </code></pre>
  </details>

   3. ```python
      print(type(3e-5))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `float`
    </code></pre>
  </details>

   4. ```python
      print(type("234"))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `str`
    </code></pre>
  </details>

   5. ```python
      value = "2"
      value2 = int(value)
      print(type(value2))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `int`
    </code></pre>
  </details>

   6. ```python
      name = input("What is your name?")
      print(type(name))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `str`
    </code></pre>
  </details>

   7. ```python
      age = 25
      is_legal_age = (age>=18)
      print(type(is_legal_age))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `bool`
    </code></pre>
  </details>

   8. ```python
      grade = 24
      total = 25
      ratio = grade / total
      print(type(ratio))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `float`
    </code></pre>
  </details>

   9. ```python
      num_classrooms = 5
      pcs_per_classroom = 22
      total_pcs = num_classrooms * pcs_per_classroom
      print(type(total_pcs))
      ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `int`
    </code></pre>
  </details>

   10. ```python
       var1 = 1
       var2 = 2
       var3 = "3"
       print(type(var1 + var2 + var3))
       ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      Error, cannot use + on numeric data types with str.
    </code></pre>
  </details>

   11. ```python
       temperature = 22
       is_freezing = (temperature < 0)
       print(type(is_freezing))
       ```

  <details>
    <summary>✅ Solution</summary>
    <pre><code>
      class `bool`
    </code></pre>
  </details>

2. Fix the mistakes in the program below:

   ```python
   num1 = 2
   num2 = "4"

   # Intended result: sum_val gets the value 6.
   sum_val = num1 + num2
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Double check the data types of the inputs!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      # Solution #1
      num2 = 4
      # Solution #2
      sum_val = num1 + int(num2)
      # Are there any other solutions you can come up with?
    </code></pre>
  </details>

3. Fix the calculation error in the program below which is suppose to calculate a simple average of grades:

   ```python
   grade1 = 25
   grade2 = 26

   average = int(grade1+grade2/2)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>There is more than one issue in the code above. How are averages calculated? And what type of data should they be?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      grade1 = 25
      grade2 = 26
      average = (grade1+grade2)/2
    </code></pre>
  </details>


4. Fix the errors below:

   ```python
   school = John Abbott College
   street_name =  275 Rue Lakeshore Road
   street_number = 21
   city = Sainte-Anne-de-Bellevue
   province = QC
   postal_code = H9X 1S2
   phone_number  = +1-(514)-457-5036
   year_creation = "1971"
   school_age = "2025" - year_creation
   address = street_name + street_number + city + province + postal_code
   print("{school} was founded in {year_creation} and is {school_age} years old")
   print("Address: {address}")
   print("Contact: {phone_number}")

   # Intended result:
   # John Abbott College was founded in 1971 and is 54 years old
   # Address: 275 Rue Lakeshore Road #21, Sainte-Anne-de-Bellevue, QC H9X 1S2
   # Contact: +1-(514)-457-5036
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Double check that the intended data type for each variable is initialized correctly. Use f-strings!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      school = "John Abbott College"
      street_name =  "275 Rue Lakeshore Road"
      street_number = 21
      city = "Sainte-Anne-de-Bellevue"
      province = "QC"
      postal_code = "H9X 1S2"
      phone_number  = "+1-(514)-457-5036"
      year_creation = 1971
      school_age = 2025 - year_creation
      address = f"{street_name} #{street_number}, {city}, {province} {postal_code}"
      print(f"{school} was founded in {year_creation} and is {school_age} years old")
      print(f"Address: {address}")
      print(f"Contact: {phone_number}")
    </code></pre>
  </details>
