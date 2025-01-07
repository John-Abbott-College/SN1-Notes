# Intro to NumPy

Numpy is a scientific library which stands for Numerical Python that use a special data structure similar to lists called numpy arrays.



## Importing `numpy`

Import `numpy`. You may use the alias `np`

```python
import numpy as np
```



## Numpy arrays

Numpy arrays are structures of data similar to lists. 

Operations with numpy arrays are 50x faster than traditional Python lists because they are written partly in another programming language called C/C++. 



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

- Had we done this with a simple python lists, we would get `[1,3,2,3]`



4. This [tutorial](https://www.programiz.com/python-programming/numpy/basic-array-operations) shows you all the arithmetic operations that are possible with NumPy arrays. 





## **Polynomial fitting**

In most cases in real life, we only have access to historic data and don't know the analytical function that describes a relationship between two variables $$f(x)$$. 

Polynomial fitting, or regression, models the relationship between an independent variable $x$ and a dependant variable $y$ based on the observed data points. It finds the coefficients of a polynomial function of a given degree (1,2 , etc.) that best fits the observed data:

<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*_UaCxPswsCxkj9JzYXCiWg.png"/>

> Source: Abhigyan. (2024, January 12). Understanding Polynomial Regression - Analytics Vidhya - Medium. *Medium*. https://medium.com/analytics-vidhya/understanding-polynomial-regression-5ac25b970e18

#### **numpy.polyfit()**

`polyfit()` is a `numpy` function that allows programmers to fit polynomial function onto the data. In this example the data is stored in simple python lists:

```python
import numpy as np

x_observed = [1,2,3,4,5,6]
y_observed = [2,4,6,7,9,11]
```

#### Fitting

To fit a linear equation on observed data points `x` and `y_observed`, use: 

```python
coefficients = np.polyfit(x=x, y=observed_y, deg=1)
```

#### Coefficients

The returned coefficients are a numpy array with [a, b]  corresponding to the slope and intercept $$y = ax + b $$

```python
print(coefficients)
```

**Output**

```text
array([1.74285714, 0.4       ])
```

#### **Accessing the coefficients**

Similarly to Python lists, elements in a NumPy array are accessed using the index:

```python
a = coefficients[0]
b = coefficients[1]

# Alternatively you can unpack a, b like this:
a, b = coefficients
```

#### Using the coefficients

Now, to calculate the corresponding `y` values for each `x` using the fitted line, you can utilize a list comprehension:

```python
y_estimate = []
for x in x_observed:
	y_estimate.append(a*x + b)
```

Alternatively, to type this faster, you can use a list comprehension:

```python
y_estimate = [a*x + b for x in x_observed]
```

> Optionally, you can use a NumPy array to be even more efficient:
>
> ```python
> y_estimate = b + a*np.array(x_observed)
> ```

#### Predictions for new values

To "predict" the value of y for new values of x (for example in the future), simply apply the linear equation: 

```python
x_new = 12 #A value of x we don't have in our raw data
y_prediction = a*x_new + b 
```

#### Second degree polynomial

`polyfit()` can also be used to fit a polynomial function of any degree $n$ : 

To fit a second degree polynomial, set the `deg` parameter to 2:

```
coefficients = np.polyfit(x=x_observed, y=observed_y, deg=2)
a, b, c = coefficients 

y_prediction_2 = a*x_new**2 + b*x_new + c

y_estimate2 = [a*x**2 + b*x + c for x in x_observed]
```

#### Evaluating the performance 

In the field of data science, evaluating the performance of a model can be tricky. However, in the context of this course, we will focus only on the absolute and relative errors produced by the model for any *new data point* `x_new`, where the true value `y_correct` is known. The evaluation involves comparing the predicted value `y_prediction` to the actual value `y_correct`.
$$
Absolute Error = | Correct - Prediction|
$$

$$
Relative Error (\%) = 100 * \frac{|Correct - Prediction|}{Correct}
$$

In python this would be:

```python
y_pred = a* x_new  + b
print("Absolute error: ", abs(y_true-y_pred))
print(f"Relative error (%): {abs(y_true-y_pred):%}")
```



## Correlation Factor `R`

The correlation factor or correlation coefficient is a numeric value that quantifies how much two variables vary together. We will be using Numpy's Pearson correlation coefficient:   `R = np.corrcoef(variable1_lsit, variable2_list)[0,1]`. 

An R close to 0 indicates no correlation, +1 indicates a strong positive correlation, and -1 indicates a strong negative correlation.



<img src="https://media.geeksforgeeks.org/wp-content/uploads/Correl.png" height=250/>

### Calculating statistical values using NumPy

Here are useful functions 

##### `np.mean(x_list)`: 

- Computes the mean value of  `x_list`

##### `np.median(x_list)`:

- Computes the median value of  `x_list`

##### `np.std(x_list)`

- Computes the standard deviation of `x_list`. The standard deviation is a measure of how dispersed the data in relation to its the mean. 

The data is sometimes incomplete of made up of certain data points that aren't defined (i.e. equal to `np.nan` - not a number):

##### `np.nanmean(x_list)`: 

- Computes the mean value of  `x_list` ignoring `nan`

##### `np.nanmedian(x_list)`:

- Computes the median value of  `x_list` ignoring `nan`

##### `np.nanstd(x_list)`

- Computes the standard deviation of `x_list` ignoring `nan`

> Learn more about [NaN](https://en.wikipedia.org/wiki/NaN)
