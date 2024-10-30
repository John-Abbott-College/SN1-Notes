# Lists

## Practice Questions

#### Level 1 - Creating and Accessing

1. Looping

   **Part 1**

   Start with a list `a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]`

   For each element in the list, print it.

   **Part 2**

   Start with a list `a=[5, 19.3, -8.7, 100.234, 6]`

   For each number in the above list, print it on a line.  Make sure that all the numbers line up appropriately by using the correct f-string formatting.

   

2. Random Access

   Start with a list `a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]`

   **Part 1**

   Using the above list and *without* a  `for-loop`, write every 1st, 3rd, 5th, 7th and 9th element on the same line.

   **Part 2**

   Using the above list and a `for-loop` print every second element on a separate line

   *hint: use `range(start,end,step)` where `start`, `end`, `step` are properly set*



3. Manipulating every element

   Start with a list `a = [1, 7, 2, -3, 5, 9]`

   Loop over this list, and calculate the sum of all the squares of each element in the list.  Print the sum

   

   $$ \text{total} = \sum_{i=0}^5 a_i^2$$ 
   
   
   
3. Creating

   **Part 1**

   Ask the user how many grades they want to enter.

   Ask user for the grades, one at a time

   Save all the grades in a single list
   
   **Part 2**
   
   Create a list with the following values (1, 3, 5)
   
   



#### Level 2 - Applying list functions

1. You have a list of names 'sandy', 'bob', 'bette', 'sally', 'rachel'.

   Print the name in sorted order, one per line.  Do NOT modify the list!



#### Level 3 -  Paired Lists

1. You have two lists, one with voltage readings, and one with current readings taken during a physics lab.

   ```python
   measured_voltage = [15.101699904780466, 87.52514747233391, 205.2337707312554, 289.1094432508661, 414.7758261003678,
                       521.0061492043556, 625.1419596586946, 709.8114743758281, 787.1784934174754, 905.4308513168793]
   measured_current = [3.944899134858856, 1.5777028976680696, 2.7491943548717384, 3.670317402603832, 5.83579244326929,
                       3.015612264536842, 7.93966836058325, 3.033586150442605, 8.267700560322258, 6.856525379569174]
   ```

   Create a function that returns the calculated resistance, by:

   * Loop over both lists, and calculate the resistance (R = V/I) for each reading.
   * Average the resistance results to get a reasonable value for R

   Calculate the measured resistance for this data

   


## Answers

#### Level 1 - Creating and Accessing

1.

```python
a=["hello ", 3, "world, ", 6, "I ", 21,"am ",18,"fine", -2]

for element in a:
  print(element)

a=[5, 19.3, -8.7, 100.234, 6]
for element in a:
  print(f"{element:10.3f}")
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



4.

```python
# part 1

grades = []
n: int = int( input("How many grades do you want to enter? "))
for i in range(n):
  grade: float = float( input(f"Enter grade for student {i+1}: "))
  grades.append(grade)
  
# part 2
a = [1, 3, 5]
```



#### Level 2 - Applying list functions

1.

```python
a=['sandy', 'bob', 'bette', 'sally', 'rachel']
for name in sorted(a):
  print(name)
```



#### Level 3 - Paired Lists

1. (Note: Resistance is approx 100)

```python
# Using indices

measured_voltage = [15.101699904780466, 87.52514747233391, 205.2337707312554, 289.1094432508661, 414.7758261003678,
                    521.0061492043556, 625.1419596586946, 709.8114743758281, 787.1784934174754, 905.4308513168793]
measured_current = [3.944899134858856, 1.5777028976680696, 2.7491943548717384, 3.670317402603832, 5.83579244326929,
                    3.015612264536842, 7.93966836058325, 3.033586150442605, 8.267700560322258, 6.856525379569174]

num_measurements = min( len(measured_voltage), len(measured_current) )

def calculate_resistance(voltages,currents):
    resistances = []
    for i in range(num_measurements):
        resistances.append(voltages[i]/currents[i])
        
    resistance = sum(resistances)/num_measurements
    return resistance

def main():
    r = calculate_resistance(measured_voltage, measured_current)
    print(f"The average measured resistance is: {r}")
main()
    
```

```python
# Using zip

measured_voltage = [15.101699904780466, 87.52514747233391, 205.2337707312554, 289.1094432508661, 414.7758261003678,
                    521.0061492043556, 625.1419596586946, 709.8114743758281, 787.1784934174754, 905.4308513168793]
measured_current = [3.944899134858856, 1.5777028976680696, 2.7491943548717384, 3.670317402603832, 5.83579244326929,
                    3.015612264536842, 7.93966836058325, 3.033586150442605, 8.267700560322258, 6.856525379569174]

num_measurements = min( len(measured_voltage), len(measured_current) )

def calculate_resistance(voltages,currents):
    resistances = []
    for voltage, current in zip(voltages,currents):
        resistances.append(voltage/current)
        
     resistance = sum(resistances)/num_measurements
     return resistance

def main():
    r = calculate_resistance(measured_voltage, measured_current)
    print(f"The average measured resistance is: {r}")
main()
    
```

