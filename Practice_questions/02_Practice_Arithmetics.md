## Arithmetic operators

1. What is the output of the following program:

   ```python
   x = 6
   y = 2
   print(x ** y)
   print(x // y)
   ```



2. What is the output of the following program:

   ```python
   print((-2 / 4), (2 / 4), (2 // 4), (-2 // 4))
   
   ```

3. What is the output of the following program:

   ```python
   print(1/1)
   ```

   

4. What is the output of the following program:

   ```python
   x = 1 / 2 + 3 // 3 + 4 ** 2
   print(x)
   ```

   

5. What is the output of the following program if the user enters `7` and `5` respectively:

   ```python
   x = int(input())
   y = int(input())
   
   x = x % y
   x = x % y
   y = y % x
   
   print(y)
   ```

6. Which of the following statements are true?

   - Addition precedes multiplication.
   - The right argument of the `%` operator cannot be zero.
   - The result of the `/` operator is always an integer value.



## **Answers:**

1. 
36
3

2.  -0.5 0.5 0 -1

**Note: //  rounds the answer down to the nearest integer, -2/4 -> -0.5 -> Nearest smaller integer is -1 not 0.**

3. 1.0 

**Remember a division always implicitly converts the numbers to float**

4. 17.5

5. 1

6. The right argument of the `%` operator cannot be zero. The modulo performs a division and returns the remainder. This will cause a Division by Zero and cause an error just like for the `/` and the `//` operators.
