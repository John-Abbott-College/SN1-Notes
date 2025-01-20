# Deeper dive - Functions

Before diving into this topic, ensure that you've already covered the following lectures:

- [Variables & Constants](./Notes/01_Expressions_Variables_Constants)
- [Assignment Operators](./Notes/01_Expressions_Operators_Assignment)



In programming, a function is a set of instructions designed to perform a specific **task**. It's a block of code that executes when called. 

**Analogy of the little people in boxes**

One way of looking at functions is to imagine small and clever people living inside boxes, isolated from the outside world. These clever people are really good at performing one specific task when provided with the input they need. 

<img src="Images/copilot_function_analogy.jpeg" height=200/>

> Source Image: AI generated image Copilot. 
>
> Disclaimer: No little human was harmed in the making of these notes. 

One example we have already seen on multiple occasions is the `print()` function. To call the function we simply type its name followed by parenthesis `()`. We can add the input string in between the parenthesis: 

```python
print("HELLO")
```



<img src="Images/copilot_function_print.jpeg" height=150/>

> Source Image: AI generated image using Microsoft Copilot.

Functions can accept input arguments provided by the programmer calling the function. In the prior example, the input argument is the string `"HELLO"`. 

Functions may also (not always), produce return values, which are the results the programmer expects after the function finishes its tasks. For example the function `float()` which returns the float equivalent of an input value can be saved into a new variable `my_float`:

```python
my_int = 5
my_float = float(my_int)
```



<img src="Images/copilot_function_float.jpeg" height=150/>

> Source Image: AI generated image using Microsoft Copilot.

Remember that in an **assignment operation**, the **right hand side is evaluated first** and then assigned to the variable on the left.

<img src="Images/Variables_assignment.png" height=150/>

This means that the function will:

1. receive it's inputs
2. run to completion, and then
3. return it's output
4. the output will be assigned to the variable on the left hand side of the `=`.


