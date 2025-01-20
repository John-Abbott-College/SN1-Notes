## Introduction to Python

In this section, we will learn a little bit about the history of Python, different Python versions and implementations, and the impact that Python has had on modern-day programming. Let's begin.

 

### Why Python?

Programmers of all levels prefer Python for several practical reasons:

- **Easy to Learn**:     Python has a shorter learning curve, allowing programmers to start coding     more quickly.
- **Easy to Teach**:     Teaching Python requires less effort, enabling educators to focus on core     programming concepts rather than complex language-specific rules.
- **Easy to Use**:     Python often allows for faster development of new software.
- **Easy to Understand**:     Python code is generally easier to read and comprehend.
- **Easy to Obtain and Deploy**: Python is free, open-source, and works across     different platforms.

### Python 2 vs. Python 3

There are two main versions of Python: Python 2 and Python 3.

- **Python 2**:     An older version that is no longer actively developed for major changes     but still receives updates for bug fixes and security issues. It is not     compatible with Python 3, so code written in Python 2 needs to be revised     to work with Python 3.
- **Python 3**:     The current and actively developed version of Python, which introduces its     own standards and features. Python 3 is not backward compatible with     Python 2, and migrating code from Python 2 can be complex and error-prone.

For new projects, Python 3 is recommended. The course will use Python 3, and while there are differences between Python 3 releases, newer versions are compatible with earlier Python 3 versions. 



 ## Demo: Using a Terminal to write your first lines of code



- On your Windows PC, type "CMD" in the search bar to open the ***Command Line Prompt*** 

- Type the following command and hit the enter button: 

  ```cmd
  python
  ```


> ⚠️ If python is not installed on your PC, this command will not be recognized. If you are trying this on your personal computer, follow this [tutorial]() to install python. 
>
> ⚠️ If you are sure to have correctly installed python, try this command instead `python3` 

This will tell your computer that you will start writing instructions in the programming language called *Python*. You can start typing python code directly here!

- Type the following line of code and hit the enter button:

  ```python
  print('Hello World')
  ```

  - You should observe that "hello world" appears in the prompt under your written line of code.  This is the response of the computer.

    ```cmd
    >>> print('hello world')
    hello world
    ```

  - `print()` is a very useful Python function which can help us output information to the user. Just like mathematical functions such as sin(), cos(), python uses functions which have names followed by round brackets. We will learn more about this in the future.

- You can type the following lines:

  ```python
  name = "Alex"
  print("My name is " + name)
  ```

  - The line `name = "Alex"` creates a variable called `name` and assigns "Alex" as its value. We will come back to variables in the future.  
  - The second line `print("My name is " + name)` prints the combined text *"My name is"* with the value stored in the variable `name` (which is "Alex"). The "+" sign here will combine the two texts into one. 

- Congratulations! You have written and executed your first lines of code! Now try to print your name and your age in the command prompt.

  
