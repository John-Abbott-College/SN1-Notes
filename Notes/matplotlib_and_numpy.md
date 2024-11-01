# Scientific modules

Python offers a wide range of modules useful for scientist, in this course you will learn to use some basic functionality of:

- Matplotlib
- Numpy

 

## Modules

Python has some pre-existing built-in modules like `math`, `turtle`, `datetime` . Developers from all over the world can create new modules that serve particular needs for example `pygame` which is a popular module for developing games, or `pytorch` which is popular in the field of AI and `plotly` which is popular in the field of data visualization (graphs,plots, etc). 



## Importing and installing a module

1. Create a new PyCharm project 
2. In the project configuration window> Interpreter type: Make sure  **Project venv** is selected

<img src= "Images/install_module/img_2.png"/>

3. Add a python file to write your code.

4. The `import` statement followed by the module name, allows you to import a module into your script. For example:

   ```python
   import math   #comes built-in with python
   ```

   > Note: You can use an alias to "nickname" a package and shorten your lines of code by using the `as` keyword For example:
   >
   > ```python
   > import math as m
   > 
   > print(m.pi)
   > ```
   >
   > Note: You can also import a function or a sub-module within a given module
   >
   > ```python
   > from math import sin
   > 
   > print(sin(0))
   > ```

5.  If you are importing a module that wasn't installed, it will be underlined in red:

   ```python
   import numpy as np
   from matplotlib import pyplot as plt
   ```

   <img src= "Images/install_module/img_4.png"/>

6. If you see an error saying "Unresolved reference", that means you must install the module.

7. Click File > Settings to open the Settings menu:

   <img src= "Images/install_module/img_3.png"/>

8. Select Project > Project interpreter from the left hand side menu

9. This is all the list of modules that are installed in my project, yours might not contain much for now.

10. To add a package/module, click the + button at the top of the list

11. Search for the package you want installed: "*matlplotlib*" then click *Install Package*

    <img src= "Images/install_module/img_5.png"/>

12. While you are here, install *numpy* as well:

    <img src= "Images/install_module/img_6.png"/>

13. Now that the packages are installed, try typing those lines in your python file:

    ```python
    import numpy as np
    from matlplotlib import pyplot
    
    ```

Do I need to install the modules every time I start a new project? 

On the school computers...yes unfortunately because you don't have the right permissions to install them for all projects. 

But at home you can use a useful command called `pip install` to have them installed permanently and for all projects. 



## Installing modules on your home PC

**How to use the command line (like a pro 😎) - Windows**

1. Type **cmd** in the Windows search bar and click the "Command Prompt" icon.

3. Type the following command in the [command prompt](https://phoenixnap.com/glossary/command-prompt):

```
pip install --upgrade pip
```

4. Install your packages:

```cmd
pip install matplotlib
pip install numpy
```

**How to use the command line (like a pro 😎) - Mac**

1. From Launch page, search for an app called Terminal
2. Type the following command in [Terminal](https://support.apple.com/en-ca/guide/terminal/welcome/mac):

```
pip3 install --upgrade pip
```

3. Install your packages with the following commands:

```
pip3 install matplotlib
pip3 install numpy
```



## Matplotlib 

Matplotlib is a library used for making scientific graphs!

We will only ever use one of its submodules called `pyplot`

1. You can import it in your script by using this line of code:

```python
import matplotlib.pyplot as plt
```

2. Draw a simple plot line using `plot.plot(x,y)`

   ```python
   
   xpoints = [1,2,3,4,5,6,7,8,9,10]
   ypoints = [2,4,6,8,10,12,14,16,18,20]
   
   plt.plot(xpoints, ypoints)
   
   plt.show() # This line is important to display your graph
   ```

   

3. Follow [this tutorial](https://www.w3schools.com/python/matplotlib_pyplot.asp) to learn the different ways of styling your graph:

   

## Numpy 

Numpy is a scientific library which stands for Numerical Python that use a special data structure similar to lists called numpy arrays.

Operations of numpy arrays are 50x faster than traditional Python lists because they are written partly in another programming language called C/C++. 



1. Start by importing `numpy` into your script. We will use the alias `np` to type things faster.

   ```python
   import numpy as np
   ```

   

2. To create a numpy array from a Python list, simply use the following:

   ```
   my_list = [1,2,4,5,7,8]
   my_array = np.array(my_list)
   
   #Alternatively 
   my_array = np.array([1,2,4,5,7,8])
   
   print(my_array)
   ```

   

3. Why use arrays over lists? Arrays mimic mathematical vectors and matrices, for example:

   ```python
   force_1 = np.array([1,3])
   force_2 = np.array([2,3])
   force_total = force_1 + force_2
   print(force_total)
   ```

   

**Result:** 

[3 6] 

- The x and y components of each force were added independently.

- Had we done this with a simple lists, we would get `[1,3,2,3]`



4. This [tutorial](https://www.programiz.com/python-programming/numpy/basic-array-operations) shows you all the arithmetic operations that are possible with numpy arrays. 