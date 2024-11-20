## Importing `numpy`

Import `numpy`. You may use the alias `np`

```python
import numpy as np
```



## Numpy array

Coming soon.



## Arithmetic operations 

Coming soon. 



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
