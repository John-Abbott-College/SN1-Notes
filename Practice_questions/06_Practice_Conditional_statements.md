## Conditional statements

1. Using `if`, `elif` and `if/else` statement: calculate the precise age of a person while taking into account their day, month and year of birth. Complete the function below

   ```python
   import datetime
   
   def get_age(birth_year,birth_month,birth_day )
       current_year = datetime.datetime.now().year
       current_month = datetime.datetime.now().month
       current_day = datetime.datetime.now().day
   
       # Complete this function...
      
   ```

   

Test your function by running the following edge cases:

```python
today_year = datetime.datetime.now().year 
today_month = datetime.datetime.now().month
today_day = datetime.datetime.now().day

print(get_age(today_year-34,today_month+1,1))   # This should print 33
print(get_age(today_year-34,test_month, today_day+1)) # This should print 33
print(get_age(today_year, today_month, today_day)) # This should print 0
```

