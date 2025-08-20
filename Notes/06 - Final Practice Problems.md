# Practice Problems for Final

For some questions that have you read in numbers from a file, one number per line (advent of code)

```python
fh = open("input.txt", "r")
for line in fh:
    value = int(line)
```

For some questions that have you *input* numbers (Kattis):

```python
value = input()		# do not put a prompt
```



## Easy

5. https://www.w3schools.com/python/exercise.asp?x=xrcise_lists_loop1 - basic quiz

8. https://adventofcode.com/2018/day/1 - reading from file and totals

9. https://adventofcode.com/2019/day/1 - reading from file and totals

   

    

## Medium

1. https://leetcode.com/problems/search-insert-position/description/

2. https://leetcode.com/problems/sqrtx/description/

3. https://adventofcode.com/2015/day/1 - looping over a string, "ifs", and totals

   *hint*: You can loop over a string the same way you can loop over a list

   ```python
   s = "sandy"
   for c in s:
     if c == "a":
       print("Yay, the string 's' contains the character 'a')
   ```

4. https://adventofcode.com/2021/day/1 - looping over a list (or looping over file), previous value, differences, ifs, totals



## Challenging

1) https://leetcode.com/problems/two-sum/description/ - nested for loop

2) https://leetcode.com/problems/plus-one/description/

3) https://adventofcode.com/2016/day/1

   *hint:* You can change your input string to a list, by doing the following

   ```python 
   input = "R2, R2, R2"
   input_list = input.split(",")		# = ["R2", "R2", "R3"]
   ```

   