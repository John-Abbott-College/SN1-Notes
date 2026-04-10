# Scope & Statements

The **scope** of a variable or function **name** defines *where that can variable/function be accessed* in the code.

The point of this concept is to deal with cases where there are name conflicts between
function and variable names.

Name conflicts between variable names and function names can happen all the time. 

For example, consider the code below:

```py
x = 1 # a variable name x
x = 0 # update the value of x

def function_1(x): # function parameter name x
    print(x) # what is the value of x?
    x = x**2
    return x

def function_2(x): # x again!
    print(x) # what is the value of x?
    x = x**3
    return x

def function_3(y): # y, not x
    print(x) # is x defined?
    y = y**3
    return y


print(x)
print(function_1(2))
print(x) # does x change after calling function_1?
x = 1
print(function_2(3))
print(x) # what did x change to after the previous two lines of code?
print(function_3(3))
print(y) # is y defined?
```

What gets printed to the console? That is, what is the value stored by the variable called
`x` at the moment the `print` statement is called? What about the variable `y`?

To know for certain, we have to know the **scope** where the variables `x` and `y` are defined.

## Concepts

There are two main concepts to know:

1. **Global scope**: Variable and function names in *global scope* are available to *all* your code.
1. **Local scope**: Variable and function names in the *local scope* are only available or visible to the code *within that scope*.

## Rules

How do we know when a variable or function is accessible in global or local scope? Here
are the rules:

1. By default, all variables and functions are created in *global scope*
2. However, when a variable or function is created *inside a function*, that
   variable/function is *only accessible inside that function*
3. That is, *all functions* create a *local scope*, where all variables or functions
   defined within the function body only exist within that local scope.

Function parameters are examples of variables created inside a function, therefore
*function parameters are only accessible inside that function* and cannot be used outside
of it.


## Examples

1. Can a variable created in global scope be accessed inside a function?

    ```python
    def my_function():
        print("Do I know that variable?", var)

    var = 1
    my_function()
    print(var)
    ```

    **output:**

    ```
    Do I know that variable? 1
    1
    ```

    A variable existing outside a function is in **global scope**, so it can be accessed inside the function's body.
    
    Careful though: the variable has to be *defined already* in order for it to be in
    **global scope**:

    ```python
    def my_function():
        print("Do I know that variable?", var)

    my_function()
    var = 1

    print(var)
    ```

    **output:**

    ```
    error (var not defined)
    ```

2. Can a variable created in a local scope be accessed outside the function it was defined
   in?

    ```python
    def my_function():
        var = 2
        print("Do I know that variable?", var)

    var = 1
    my_function()
    print(var)
    ```

    **output:**

    ```python
    Do I know that variable? 2
    1
    ```

    Note that `var` is defined in **global scope** AND in the **local scope** of
    `my_function` -- however, they do not store the same value since the scope is
    different.


3. ✍️**Challenge: What is the output?**

    ```python
    value = 50
    def function1():
       value = 25
       print(value)

    function1()
    print(value)
    ```

Once you have done all three of these problems, return to the problem at the beginning of
these notes -- can you get the output for all of the print statements?
