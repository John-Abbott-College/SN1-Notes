# Scientific modules

Python offers a wide range of modules useful for scientist, in this course you will learn to use some basic functionality of:

- Matplotlib
- Numpy

 

## Modules

Python has some pre-existing built-in modules like `math`, `turtle`, `datetime` . Developers from all over the world can create new modules that serve particular needs for example `pygame` which is a popular module for developing games, or `pytorch` which is popular in the field of AI and `plotly` which is popular in the field of data visualization (graphs,plots, etc). 



## Importing and installing a module

1. Ensure that the  PyCharm project is using the System's interpreter

2. Add a python file to write your code.

3. The `import` statement followed by the module name, allows you to import a module into your script. For example:

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

4. If you are importing a module that wasn't installed, it will be underlined in red:

   ```python
   import numpy as np
   from matplotlib import pyplot as plt
   ```

   <img src= "Images/install_module/img_4.png"/>

5. If you see an error saying "Unresolved reference", that means the module **is not installed** on the computer.

### **Installing via PyCharm**

1. Click File > Settings to open the Settings menu:

<img src= "Images/install_module/img_3.png"/>

2. Select Project > Project interpreter from the left hand side menu

3. This is all the list of modules that are installed in my project, yours might not contain much for now.

4. To add a package/module, click the + button at the top of the list

5. Search for the package you want installed: "*matlplotlib*" then click *Install Package*

   <img src= "Images/install_module/img_5.png"/>

6. While you are here, install *numpy* as well:

   <img src= "Images/install_module/img_6.png"/>

7. Now that the packages are installed, try typing those lines in your python file:

   ```python
   import numpy as np
   from matlplotlib import pyplot
   
   ```



### **Installing via command line on Windows (like a pro 😎) **

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

### **Installing via Terminal on Mac (like a pro 😎)**

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

   

3. To draw a simple scatter point, you can use `plt.scatter(x,y)`:

   ```python
   plt.scatter(xpoints, ypoints)
   plt.show()
   ```

   

4. If you wish to save your graphs, use `plt.savefig()`. This will create a PNG image inside your project directory. 

   ```python
   plt.plot(xpoints, ypoints)
   plt.savefig("my_first_graph.png")
   plt.show() # This line is important to display your graph
   ```

   

5. Follow [this tutorial](https://www.w3schools.com/python/matplotlib_pyplot.asp) to learn the different ways of styling your graph (colours, markers, titles, scales, etc)

   

