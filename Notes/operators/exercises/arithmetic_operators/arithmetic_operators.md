## Arithmetic operators

Note: if you forget what any of these operators do, review the lecture notes on Operators!

1. What is the output of the following program:

   ```python
   x = 5
   y = 2
   print(x ** y)
   print(x // y)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>What does the <code>**</code> operator do? What does the <code>//</code> operator do?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      25
      2
    </code></pre>
  </details>

2. What is the output of the following program:

   ```python
   print((-2 / 4), (2 / 4), (2 // 4), (-2 // 4))
   
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>The <code>print</code> function will insert a space between each comma-separated argument.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      -0.5 0.5 0 -1
    </code></pre>
  </details>

3. What is the output of the following program:

   ```python
   print(1/1)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Does the <code>/</code> operator return an <code>int</code> or <code>float</code>?</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      1.0
    </code></pre>
  </details>

4. What is the output of the following program:

   ```python
   x = 1 / 2 + 3 // 3 + 4 ** 2
   print(x)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Remember the BEDMAS (bracket/exponent/division/multiplaction/addition/subtraction) rules!</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      17.5
    </code></pre>
  </details>


5. What is the output of the following program if the user enters `7` and `5` respectively:

   ```python
   x = int(input())
   y = int(input())
   x = x % y
   x = x % y
   y = y % x
   print(y)
   ```

  <details>
    <summary>👀 Hint</summary>
    <p>Make sure you pay attention to the changes in <code>x</code> and <code>y</code> from line to line.</p>
  </details>
  <details>
    <summary>✅ Solution</summary>
    <pre><code class="language-python">
      1
    </code></pre>
  </details>
