# User Defined functions

This is what the simplest function definition looks like:

```python
def function_name():
    function_body
 
```

To define your own functions you must:

- Use the keyword `def` followed by the name of your function
- Add parenthesis `()` 
- (optional) add as many parameters as you need separated by `,`
- Use a semi-colon: `:`
- Use an indentation character (TAB) for every line of code within the function.
- (optional) use the keyword `return` and return a value or expression.

**Example:**

```python
def message():
    print("Greetings!")
    
message()
```

**output:**

```text
Greetings!
```



###  Parameterized functions

A function becomes more powerful when it can accept input, or **parameters**, from the caller. This makes the function flexible and more adaptable. Parameters differ from regular variables in two key ways:
- They only exist within the function where they are defined.
- They receive their value when the function is called, through the corresponding **arguments** provided.



```python
def function(parameter):
    ###
 
```

A function can have **as many parameters as you want**, but the more parameters you have, the harder it is to memorize their roles and purposes.

**Example:**

```python
def sum(num1, num2):
	return num1 + num2
```



<img src="Images/function_1.png" height=300/>

### **How functions work:**

- when you **invoke** a function, Python remembers the place where it happened and *jumps* into the invoked function;

- the body of the function is then **executed**;

- reaching the end of the function forces Python to **return** to the place directly after the point of invocation.

  > [!NOTE]
  >
  > Python reads your code from top to bottom. It's not going to look ahead in order to find a function you forgot to put in the right place ("right" means "before invocation".)

  



**Example 1 - Function with parameters and return value**

```python
def multiply(num1, num2):
    """Function to multiply two numbers."""
    return num1 * num2

# Method call
multiply(4,3)
```

**Example 2 - Function without parameters**

```python
def greetings():
	print("Hello! Welcome to the AI world! How may I help you today?")
    
# Method call
greetings()
```

**Example 3: Functions without return value**

```python
def even_odd( num ): 
    """Function to determine if number is even or odd."""
    if (num % 2 == 0): 
        print("even")
    else: 
        print("odd")
        
# To call this function
even_odd(23)
```



#### Default values

```python
def divide(numerator, denominator=1):
    """Function to divide a numerator by a denominator.
    If denominator unspecified, the default value is 1. """
	return numerator/denominator


# To call this function
divide(3,2)

divide(3)  # will perform 3/1
```



#### Calling a function within a function

To make things more complex, functions may even call other functions. Let's look at a more complex example:

Let's create functions to calculate the variance of three numbers. A variance is the average of the squared differences from the mean. 



<div class="button-container">     
    <a href="https://app.codeboot.org/4.1.2/?init=.odXNpbmdfdmFyaWFibGVzXzIucHk=~XQAAgACAAQAAAAAAAAA6GUn-74cyTh0__GhBNjgdVfqEsZ-12mb5qH1w6HItSS8aB7YPpB70sX-c_R-tuJfsZ7Q5rD2_gLB0p_txmGHlhNTJbW0X5OQh_zuMqn6hVMcGuk-_OFhOu7uWqIoGNneXmnvCASdmSPMOycQkIgDfe9X3Z4CqXqHOS2YuLWkA_-gZ9Mg=.oYXNzaWduaW5nX3ZhcmlhYmxlcy5weQ==~XQAAgAAXAAAAAAAAAAA8CAOiEWEDQUfSteh5uxz_eJ-pfPsoZcaE__9yMgAA.obWF0aF9mdW5jdGlvbnMucHk=~XQAAgAB7AAAAAAAAAAA0m0pnuFI8c-fPp4GmUQhPyfWm-sZLdkTp2ysHhXIpXdPqLmFecWpjgN9D12FvR64UVRP0p-GLs6zwpzXKoJkMKXeVqch2IFv__7rLgAA=.fZnVuY3Rpb25fY2FsbHNfZnVuY3Rpb24ucHk=~XQAAgACIAgAAAAAAAAAyGUj_TtFe5Qp7gdNJjXHYhzcmvd4DmMgZhsWk91foYdyyNUBdLlGBpt_GzXYVvnHDG2UFx8TC1Ic6rWHFMaMa0fqgiII-4DZ8z3aIdnzDEEPz4hslUBUMX5mYbKyw0-RNLg9eq_J1wRBP1OwraoA9abPEBGEU5NtjIxMc64sxUA2o8L7znEUX7_1BVp0Pgg9BZigqnyYH8l9t2qbUk13RqGEsp3s1NFJ6lCkTOXsMk3t2rjzNGD9DkykPeDuwmZ7I4Eha0RMq9pfr3eQLAXnn6IuwnexRV3kAN7yWt6PGd_WPw7Ah4hDTDZ1k4IXJBMFBqmD1KR47rHfhC__fVgoJ.~lang=py-novice.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
def average(num1, num2, num3):
    """Calculates the average of three numbers"""
    sum = num1 + num2 + num3
    return sum/3

def squared_difference(num1, num2):
    """Calculated the squared difference between two numbers"""
    return (num1-num2)**2

def variance(num1, num2, num3):
    mean = average(num1, num2, num3)
    sqared_diff1 = squared_difference(num1, mean)
    sqared_diff2 = squared_difference(num2, mean)
    sqared_diff3 = squared_difference(num3, mean)
    
    variance_value = average(sqared_diff1, sqared_diff2,sqared_diff3)
    return variance_value
    
   
value = variance(16, 18, 19)   
print("The variance is:", value)
```



### **Pros of using functions:**

- One big benefit of using functions is that you can reuse code you've already written instead of starting from scratch each time. Now if you need to calculate the average of three different numbers, you can easily switch the values:

  

  ```python
  variance = variance(22, 21, 24)   
  print("The variance is:", value)
  ```

  

- The best functions are as general as possible so they can be used in many different contexts. 

  - In the example above `average()` is a good example of a re-usable concept, as it is the same calculation when calculating average temperature in Montréal in the past 3 days:

  ```python
  temperature1 = 23.5
  temperature2 = 26.8
  temperature3 = 32.5
  
  avg_temperature = average(temperature1,temperature2,temperature3)
  ```

  - As you progress through this course, you will learn how to create your own functions in a way that optimizes code re-usability. 

    
