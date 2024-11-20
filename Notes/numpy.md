# Intro to numpy

Numpy is a scientific library which stands for Numerical Python that use a special data structure similar to lists called numpy arrays.



## Importing `numpy`

Import `numpy`. You may use the alias `np`

```python
import numpy as np
```



## Numpy arrays

Numpy arrays are structures of data similar to lists. 

Operations of numpy arrays are 50x faster than traditional Python lists because they are written partly in another programming language called C/C++. 



To create a `numpy` array from a Python list, simply use the following:

```python
my_list = [1,2,4,5,7,8]
my_array = np.array(my_list)

```

Alternatively, an array can be created in one line as such: 

```python
my_array = np.array([1,2,4,5,7,8])

print(my_array)
```

Arrays mimic mathematical vectors and matrices

**Example :** Force vector

 Let two force vectors $$\vec{F1}$$ and $$\vec{F2}$$ represented as column vectors with their respective x and y force components (in Newtons N)
$$
\vec{F_1}  = \begin{bmatrix}
           1  \\
           3  \\
         \end{bmatrix}
$$

$$
\vec{F_2}  = \begin{bmatrix}
   2 \\
   3 \\
 \end{bmatrix}
$$

The total force is:
$$
\vec{F_{tot}} = \vec{F_1} + \vec{F_2}
= \begin{bmatrix}
   1 + 2 \\
   3 + 3 \\
 \end{bmatrix} 
 = \begin{bmatrix}
   3 \\
   6 \\
 \end{bmatrix}
$$
The two forces can be represented using numpy arrays and the two arrays can be added using a `+`

```python
force_1 = np.array([1,3])
force_2 = np.array([2,3])

force_total = force_1 + force_2
print(force_total)
```



**Result:**  [3 6] 

- The x and y components of each force were added independently.

- Had we done this with a simple lists, we would get `[1,3,2,3]`



4. This [tutorial](https://www.programiz.com/python-programming/numpy/basic-array-operations) shows you all the arithmetic operations that are possible with numpy arrays. 





## Polyfit

In most cases in real life, we only have historic data and don't know the analytical function that describes a relationship between two variables $$f(x)$$. 

**Polynomial fitting:**

The goal is to find the coefficients of a polynomial function of a given degree (1,2 , etc.) that best fits the observed data. 

**Usage**

To fit a linear equation on observed data points `x` and `y_observed`, use: 

```python
import numpy as np

x = [1,2,3,4,5,6]
y_observed = [2,4,6,7,9,11]
coefficients = np.polyfit(x=x, y=observed_y, deg=1)
```

 The returned coefficients are a list [a, b]  correspond to the slope and intercept $$y = ax + b $$

```python
a = coefficients[0]
b = coefficients[1]

# Alternatively you can get a, b like this:
a, b = coefficients
```

To convert a list of x values you can use a list comprehension:

```
y_estimate = [a*x + b for x in x_observed]
```

To "predict" the value of y for new values of x (for example in the future), you simply implement the equation: 

```python
x_new = 12 #A value of x we don't have in our raw data
y_prediction = a*x_new + b 
```

> To fit a second degree polynomial, set the `deg` parameter to 2:
>
> ```
> coefficients = np.polyfit(x=x_observed, y=observed_y, deg=2)
> a, b, c = coefficients 
> 
> y_prediction_2 = a*x_new**2 + b*x_new + c
> 
> y_estimate2 = [a*x**2 + b*x + c for x in x_observed]
> ```

#### 
