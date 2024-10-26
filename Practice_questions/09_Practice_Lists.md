## Lists

**Level 1**

1. Define a list of 10 integers from 1 to 10 and display the size of the list.
2. Define a list of 5 first names and print the list. 

3. Consider the following list which represent the temperatures every day of the week from Sunday to Saturday and display the minimum, maximum, average and print the sorted list.

```
temperatures = [12.5, 15.5, 10.2, 15.0, 17, 14.6, 15.0]
```



4. Consider the following list which represent the temperatures every day of the week from Sunday to Saturday:



```python
temperatures = [12.5, 15.5, 10.2, 15.0, 17, 14.6, 15.0]
```

- Display the temperature on Monday
- Display the temperature on Saturday
- Display the average temperature during the week days (Monday to Friday )
- Add the temperatures of the following 7 days to the same list:
  - 12.3°C
  - 11.4°C
  - 13.2°C
  - 10.5°C
  - 12.4°C
  - 11.0°C
  - 9.4°C

- Calculate the average on week days over two weeks.





**Level 2** (Coming soon)

1. Use a for loop to create an array of size `n` with numbers 1, 2, .... , n and display the size of the list.





**Level 3**



### Answers:

**Level 1**

1. ```python
   numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   print(len(numbers))
   ```

   

2. ```python
   names = ['Johnny', 'Bob', 'Alice', 'Ken', 'Laura']
   ```

   

3. ```python
   temperatures = [12.5, 15.5, 10.2, 15.0, 17, 14.6, 15.0]
   print(f"The min temperature this week was: {min(temperatures)}")
   print(f"The max temperature this week was: {max(temperatures)}")
   print(f"The average temperature this week was: {(sum(temperatures)/ 7):.1f}")
   temperatures.sort()
   print(temperatures)
   ```

   

4. 

```python
"""
Index to day:
0 : Sunday
1 : Monday
2 : Tuesday
3 : Wednesday
4 : Thursday
5 : Friday
6 : Saturday
"""

temperatures = [12.5, 15.5, 10.2, 15.0, 17, 14.6, 15.0]

print(f"The temperature Monday was {temperatures[1]}°C")
print(f"The temperature Saturday was {temperatures[-1]}°C")

temperatures_week_days = temperatures[1:6]  #Last index not included.
average_week_days = sum(temperatures_week_days) / len(temperatures_week_days)
print(f"The average temperature on week days was {average_week_days:.2f}°C")

# adding temperatures:

temperatures.append(12.3)  #index 7
temperatures.append(11.4)  #index 8
temperatures.append(13.2)  #index 9
temperatures.append(10.5)  #index 10
temperatures.append(12.4)  #index 11
temperatures.append(11.0)  #index 12
temperatures.append(9.4)   #index 13

print(temperatures)

temperatures_week_days =  temperatures[1:6] + temperatures[8:13]
average_week_days = sum(temperatures_week_days) / len(temperatures_week_days)
print(f"The average temperature on week days for the past two weeks was {average_week_days:.2f}°C")
```



**Level 2**

1. ```python
   numbers = []
   n:int = 10
   for i in range(n):
       numbers.append(i+1)
   print(numbers)
   ```

   