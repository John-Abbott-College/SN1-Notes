# **Introduction to Programming**

 

## How does a computer program work?

A program is essential for a computer to function, much like a player is needed for a piano to produce music. Despite their complexity, computers can only perform simple operations quickly and repetitively. For example, to calculate average speed, a program must instruct the computer to accept input for distance and time, perform a division, and display the result. These basic instructions, when translated into a language the computer understands, form the basis of programming.

## Natural languages vs. programming languages

Language is a tool for expressing and recording thoughts, with many forms such as body language and spoken language. Computers use a basic form called machine language, responding to simple commands from an instruction list (IL). Unlike human languages, which evolve naturally, machine languages are created by humans. While current computers can't invent new languages, this might change in the future.

We can say that each language (machine or natural, it doesn't matter) consists of the following elements:

An **alphabet**: a set of symbols used to build words of a certain language (e.g., the Latin alphabet for English, the Cyrillic alphabet, and so on).

 

·    a **lexis:** (aka a dictionary) a set of words the language offers its users (e.g., the word "computer" comes from the English language dictionary)

 

·    a **syntax:** a set of rules (formal or informal, written or felt intuitively) used to determine if a certain string of words forms a valid sentence (e.g., "I am a python" is a syntactically correct phrase, while "I a python am" isn't)

 

·    **semantics:** a set of rules determining if a certain phrase makes sense (e.g., "I ate a doughnut" makes sense, but "A doughnut ate me" doesn't)

 

## Machine language vs. high-level language

The instruction list (IL) is the basic set of symbols that computers use to understand commands, similar to an alphabet. To make it easier for people to communicate with computers, high-level programming languages were created. These languages are more complex than machine language but simpler than natural language, using symbols and rules that humans can read. Programs written in these languages, called source code, are then converted into machine code that computers can execute.

High-level languages are easier to use than low-level languages, which are closer to the computer’s binary code. Machine language uses binary, and assembly language is a bit simpler. Computers can only directly run programs in machine language, so high-level programs need to be converted first. This conversion takes time but offers significant benefits.

High-level languages are simpler to write, read, and debug, and they can run on various types of computers with little modification. In contrast, low-level languages are specific to particular computer types and need to be rewritten for different systems.

Most programs are written in high-level languages due to these advantages. Low-level languages are used only for specific applications. To translate high-level code into machine language, two types of programs are used: interpreters and compilers.

## Compilation vs. Interpretation

Both compilers and interpreters convert high-level language (HLL) code into machine code that computers can understand. An interpreter processes and executes a program line by line, however, a compiler translates the entire program before it starts running, creating an executable file that can be run multiple times without retranslation.

**Compiler**:

* Translates the entire HLL code into machine code before running the program.

- Produces faster-running code and improves application security.

- Typically slower and uses more memory because it processes the whole program at once.

- Can only detect syntax and some semantic errors.

- Offers debugging tools but may take longer to compile large codebases.

  <img src="Images/compiler.png" height="300">

**Interpreter**:

- Translates and executes code line by line.

- Usually smaller and quicker to use for immediate     feedback.

- Easier to debug and manage memory automatically, reducing     memory errors.

- More flexible but often results in slower execution     compared to compiled code.

  <img src="Images/interpreter.png" height="300">

Many modern languages, including Python, use both methods. They are first compiled into byte code and then interpreted by a virtual machine. Python is often considered an interpreted language due to how it is commonly used.

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



 