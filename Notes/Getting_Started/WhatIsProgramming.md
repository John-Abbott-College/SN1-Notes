# What is Programming?



Computers are digital machines, which means they perform operations using binary (1 or 0) operations. They are particularly useful to perform tasks in a **deterministic** way. This means that a repeated task produces the same result if provided with the same inputs. Therefore computers are very reliable in sending, receiving, processing information and will do so in a consistent manner. 

Programming is the process of writing a **set of instructions** in the form of source code that can be understood by a computer.  

A **program** is a precise set of instructions that are used to perform a task. Programming is all about breaking down our thought process into small manageable steps for the computer to know how to run them. 



> For example:
>
> *Calculating the average of two numbers:*
>
> 1. *Input the first number* 
> 2. *Input the second number* 
> 3. *Add the two numbers = sum* 
> 4. *Divide the sum by 2 = average*
> 5. *Output average*



**Machine Code versus Programming Languages**

Computers only understand instructions that are written in **machine code**, which is really elemental and uses a binary number system. That is a numeric system which expresses every number in base-2, therefore becoming a sequence of ones and zeros such as "101001010101010100001". The reason behind why computers use binary is because they are physically made up of electric circuits more specifically transistors and logic gates. Electricity is either on ("1") or off ("0") in a given circuit. All instructions sent to a computer need to be described in a sequence of "ON" or "OFF" states and has to be very simple such as "take this number", "store this number here", "add these two numbers", "output this number there", etc. 

> 🔢 Use [this](https://www.convertbinary.com/text-to-binary/) online converter to write your name in Binary Code.

This is very hard for us humans to work with especially if we want to solve more complex tasks. That is where Programming Languages become useful. 



**Programming languages** are tools used by humans to communicate with computers in a relatively intuitive way. For example Python, C#, Java, C++ are different programming languages. Learning one of these languages will require learning and practicing its syntax, semantics and how to correct your spelling mistakes just like learning French, English or Spanish. Programming languages have some similarities with one another, but will have typically different syntax and structure. The **source code** is the set of lines of code written in a given programming language and it is typically saved into a **source file**, which is just a text file.



**Python**

Python is a widely used programming language created by [Guido van Rossum](https://gvanrossum.github.io/) who named if after the [Monty Python's Flying Circus](https://docs.python.org/3/faq/general.html#:~:text=Details%20here.-,Why%20is%20it%20called%20Python%3F,to%20call%20the%20language%20Python.), a BBC comedy series from the 70s. 

Python was chosen for this course for the following reasons:

- It is easy to learn and use
- Is intuitive thanks to its English-like syntax
- It's very accessible as it can run on Windows, Mac and Linux.
- There is a lot of support and help online.
- It can easily be equipped with add-ons called "modules" to help perform all kinds of scientific computation and charts (more on this later)



Now this is great! But how are programming languages understood by computers? Answer: they are translated into machine code. For example, the Python code is translated by the Python interpreter into machine code.  

<img src="Images/programming_process.png" height="300">

The Central Processing Unit which acts as the brain of a computer will then execute (i.e.: run the instructions) the program.  



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

  

  

## Additional notes

**More on Binary **

- Also called base-2 (as oppose to base-10 which we are mostly used to)

- Base 10: Represents the bundles of powers composing a given number (*ones*, *tens*, *hundreds*, *thousands*, etc). Let's use 231 in base 10
  $$
  (231)_{10} = 2 * 10^2 + 3 * 10^1 + 1* 10^0
  $$
  

  In 231 there are 2 *hundreds*, 3 *tens* and 1 *ones*. The base 10 requires 10 different symbols to represent real numbers: 0, 1, 2, 3, 4, 5, 6, 7, 8 or 9. 

  

- Base 2: Requires only two symbols to represent numbers 0 or 1. Binary numbers represent the powers of *two* forming that given number. For example:

  
  $$
  (0)_{10} =  0 * 2^0 = (0)_{2}
  $$

  $$
  (1)_{10} =  1 * 2^0 = (1)_{2}
  $$

  $$
  (2)_{10} = 1 * 2^1 + 0 * 2^0 = (10)_{2}
  $$

  $$
  (56)_{10} = 1 * 2^5 + 1 * 2^4 + 1 * 2^3 + 0 * 2^2 + 0 * 2^1 + 0 * 2^0 = (111000)_{2}
  $$

  

- Binary math is not covered in this course, but it if you wish to learn more about binary math and fundamentals of computers, here is an [introductory video](https://www.khanacademy.org/math/algebra-home/alg-intro-to-algebra/algebra-alternate-number-bases/v/number-systems-introduction) on the topic.

  



**What is a Command Prompt?**

- A Command Prompt or Terminal is a **text-based** user interface which allows us to send commands and interact with the computer. 
- In contrast, the computer Desktop is a **graphical** user interface which allows you to use the mouse and keyboard to interact more easily with the computer.
- If you are using a Mac, computer the equivalent app is called: *Terminal*