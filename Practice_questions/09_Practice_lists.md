# Lists

## Practice Questions

#### Level 1

1. Looping

   Start with a list `a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]`

   Using the above list and a `for-loop` print each element of the list on a separate line.

   

2. Random Access

   **Part 1**

   Using the above list and without a  `for-loop`, write every 1st, 3rd, 5th, 7th and 9th element on the same line.

   **Part 2**
   
   Using the above list and a `for-loop` print every second element on a separate line
   
   *hint: use `range(start,end,step)` where `start`, `end`, `step` are properly set*



3. Looping and using

   Start with a list `a = [1, 7, 2, -3, 5, 9]`

   Loop over this list, and calculate the sum of all the squares of each element in the list.  Print the sum

   

   $$ \text{total} = \sum_{i=0}^5 a_i^2$$ 





## Answers

1.

```python
a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]

for element in a:
  print(element)
```



2.

```python
a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]

# part 1
print (a[0], a[2], a[4], a[6], a[8])

# Part 2
for index in range(1,len(a),2):
  print(a[index])
```



3. 

```python 
a = [1, 7, 2, -3, 5, 9]
total = 0
for element in a:
  total = total + element**2
print(total)
```

