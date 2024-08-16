# Create your first project

To create a new project in PyCharm for Python, follow these steps:

**Open PyCharm**: Launch PyCharm from your start menu, desktop shortcut, or application launcher.



## Start a New Project

- If you see the **Welcome to PyCharm** dialog, click on "New Project".

  <img src="Images/pc8.png" height="300" class="inline-img">

- If you already have PyCharm open, go to the top menu and select **File > New Project**.

## Configure the New Project

- **Location**: Specify the directory where you want to create the project. You can type the path directly or click the folder icon to navigate to the desired location. 
  - We recommend that you create a folder on the PC to save all your work, similar to  "SN1_Assignments"
  - Make sure you save your work and send it to yourself so that you can work on it at home.

- **Python Interpreter**: Choose the Python interpreter you want to use for the project. 

**At school: 🏫** 

- Select **Custom environment** > **Select existing**

<img src="Images/pycharm_existing_env.png" height="500" class="inline-img">

**At home: 🏠**

- You can use an existing interpreter or create a new virtual environment. To create a new virtual environment, select **New environment using** and choose `Virtualenv`. Note: That if you are using special packages such as `Numpy`, they will need to be installed.

  <img src="Images/debug1.png" height="500" class="inline-img">

  **More Settings (Optional)**:

- **Base Interpreter**: If you are creating a new virtual environment, you need to select the base interpreter. This is usually the Python executable you **installed** on your system. If there aren't any base interpreters, make sure you have correctly done the [Python installation](./Notes/Python_Installation)



<img src="Images/pycharm_create_env.png" height="400" class="inline-img" >"



- **Create the Project**: Click on the **Create** button to initialize the new project.

## Learning the PyCharm Layout

- You should learn where every basic window within PyCharm is, let's focus on the main three parts for now

  - The Editor
  - The Project Explorer
  - The Output Window (Run the script to see it appear)
  - The Run buttons

  <img src="Images/pycharm_layout.png" height="400" class="inline-img">

- You will not see the Editor and the Output window for now

## Using the Project Explorer

- Once the project is created, you will see the project structure on the left side of the PyCharm window.
- Right-click on the project folder and select **New > Python File** to create a new Python script.

<img src="Images/debug2.png" height="300" class="inline-img">

- Choose a name for the new file, for example "main":

  <img src="Images/debug2_2.png" height="150" class="inline-img">

Now you should see the Editor and you're ready to **start coding** in your new PyCharm project!

**(Optional) Adding a folder**

- You can also add other types of files such as text files or even sub folders within your project.

- Right click on the project folder and select New > Directory:

  <img src="Images/debug2_4.png" class ="inline-img" height="400"/>

- Name this new folder: "data"

**Opening your project in the File Explorer**

- Right click the project folder, select Open In > Explorer:

  <img src="Images/debug2_3.png" class ="inline-img" height="400"/>

- This should automatically open your project folder within the explorer:

  <img src="Images/debug2_5.png" class ="inline-img" height="200"/>

- You'll notice that:
  -  The `main.py` file is accessible here
  - The `data` folder is also visible here
  - A folder called `.idea` is visible. This is automatically created by PyCharm and should not be changed/removed.
  - If you have configured your project within a new virtual environment, you will also see a `venv` folder. 

## Start Coding

- Go back to the PyCharm code Editor

- Write the following line within your `main.py` file:

  ```python
  print("Hello World!")
  ```

- You'll notice that PyCharm is coloring the different parts of your line of code to help you better see it.
- You can run the program by clicking on the green play button at the top-right part of the screen:

<img src="Images/debug3.png" height="300" class="inline-img">

- You'll notice that the output window appears at the bottom.

- Add more lines of code to your python file:

  ```python
  print("Hello World!")
  x = 3
  print(x)
  ```

  

- The Python interpreter runs the program line by line from the top to the bottom of the file

  <img src="Images/debug4.png" height="400" class="inline-img">

- The output window should read:

  <img src="Images/debug5.png" height="200" class="inline-img"/>

### Adding a comment

- Comments are readable explanations within the source code that aren't executed as code lines.

- Add a `#` at the beginning of a line to create a comment:

  ```python
  # This is a comment
  ```

- You'll notice that PyCharm colors line comments in gray

- Use three double quotes `"""` , this creates a multi-line comment:

  ```python
  """
  This is a comment
  written in
  more than just one line
  """
  ```



### Fixing errors

- Now let's create a mistake on purpose and see how PyCharm can be very useful, add the following line:

  ```python
  print(y)
  ```

- You should see PyCharm underline `y` in red

  

<img src="Images/debug6.png" height="300" class="inline-img"/>

- This is because `y` doesn't exist yet in the script, we must first create the variable `y`

- Add a `y = 23` on the line before the `print(y)`:

  <img src="Images/debug7.png" height="300" class="inline-img" class="inline-img"/>

- The error should disappear. 

### Fixing warnings

- PyCharm might also underline in a lighter color to signal a warning. These are not errors, but should be addressed as much as possible. 

  - For example here, I added a line `name = "Anne"` on the last line of the script (line 14).
  - This causes a "weak" warning because a script should preferable end with an empty last line. 
  - The yellow bulb can help you automatically fix issues like these.

  <img src="Images/debug8.png" class="inline-img"/>

- When you see a green mark appear at the top right part of the screen, this means there are no errors nor warnings in your script:

  <img src="Images/debug9.png" class="inline-img"/>

### **Run the Code**:

- If you're using an IDE like PyCharm, click the "Run" button or press the shortcut (often `Shift + F10` in PyCharm).
- You can also run the program using a Terminal:
  - Click on the Terminal button on the bottom left of the PyCharm window
  - Type: `python main.py`
  - Hit the enter button.

​	<img src="Images/debug2_6.png" height="200" class="inline-img"/>



### Explanation:

- `print`: This is a built-in Python function used to display text or other output to the console.
- `"Hello, World!"`: This is a string (a sequence of characters enclosed in quotes) that you want to print. In Python, you can use either single quotes (`'`) or double quotes (`"`) to define a string.





Congratulations! You just wrote your first Python project! 
