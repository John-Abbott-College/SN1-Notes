# Additional notes on f-strings

We have introduced f-strings earlier when learning about string concatenation. F-strings are very useful to combine various strings as well as strings with integers and floats.
This tutorial is about how to format numbers within an f-string.


## Decimal place
To control the decimal places of a float, use the `:.f` format. 

For example, here are a few lines that print the value of pi at different precisions:


```python
pi = 3.141592653589793

print("The value of pi without formatting: ", pi)  
print(f"The value of pi with two decimal places: {pi:.2f}")
print(f"The value of pi with three decimal places: {pi:.3f}")
print(f"The value of pi with four decimal places: {pi:.4f}")
```

## Large numbers
```python
avogadro = 6.02214076e23


```

## Aligning numbers 

Challenge 1: Print the reciept of the following transaction: price of item1, item2, item3, the subtotal, the tax amount and the total.

We wish to have all the numbers of the reciept aligned to the right. 

```python
item1 = 15.00
item2 = 23.50
item3 = 26.50
tax_rate = 0.15

sub_total = item1 + item2 + item3
tax_amount = 0.15 * sub_total
total = sub_total + tax_amount

... complete this
print(f"Item1 ..........{item1:>20.2f}$")
print(f"Item2 ..........{item2:>20.2f}$")
print(f"Item3 ..........{item3:>20.2f}$")
print(f"Item3 ..........{item3:>20.2f}$")
print("--------------------------")
print(f"Sub total ..........{sub_total:>20.2f}$")
print(f"Taxes ..........{tax_amount:>20.2f} $")
print(f"Total ..........{total:>20.2f} $")

```

