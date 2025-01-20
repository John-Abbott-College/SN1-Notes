## Comparison operators

The comparison operators are used to determine how two values compare to eachother : *Are these two values equal?* *Is the first value greater than this second value?* *Is the first value less than or equal to the second value?* The result of the operation is a Boolean: `True` or `False`.

For instance, let's say I borrowed 13 books at the library and I would like to check if I can rent more given that the maximum amount of books is 15.   



<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.fYm9va3NfZXhhbXBsZS5weQ==~XQAAgABhAQAAAAAAAAAmkEdXvOTiBd_V7Sg2UnzxiMPkGnPkqjQFb6bsOFALs1usuIst7u1dKnSr12RkABkw8rxC5uZF2R3k_d80JTCGKk1cqSLRu68iR3cGLQam7oYOHgSyRUv-KLVXoxsnxg82x0PHN_h2fmcxo7awM2dhsjiuCPpnXAa5Es7TYHq8VT6G2ggDKbp1GC36d_lK_fEZlyd9INBaTxy9fpTMv3N2bhLYG5SelCOFyB2Z95_8YitA.~lang=py-novice.~showLineNumbers=true.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>


```python
MAX_BOOKS = 15    #Note this variable is capitalized because it is a constant.

my_book_count = 13

print("Can I borrow more books?")
print(my_book_count < MAX_BOOKS)

my_book_count +=1
print("Can I borrow more books?")
print(my_book_count < MAX_BOOKS)

my_book_count +=1
print("Can I borrow more books?")
print(my_book_count < MAX_BOOKS)
```



Why use such operators? Those operators will come in handy when we introduce conditional statements (`if`,`else`). They allow you to establish the relationship between values and make simple decision. For example, if the age of the user is below 18, print "Sorry, you cannot vote", otherwise print "You can vote". 


### Equality operator `==` 

- The double equal operator`==` compares two operands, if they are equal the result is `True` otherwise the result is `False`. 

| English                               | Python                 |
| ------------------------------------- | ---------------------- |
| Did I borrow 14 books at the library? | `my_book_count == 14`  |
| Is the user's name "Alice"?           | `user_name == "Alice"` |

### Inequality operator != 

- Returns `True` if the operands are not equal and `False` if they are equal 

| English                                                      | Python                       |
| ------------------------------------------------------------ | ---------------------------- |
| I put 10 cookies in my pantry, did my cookie count change?   | `current_cookie_count != 10` |
| I will go to work so long as it's not my birthday. Will I go to work today? | `today != my_birthday`       |



### Greater than `>` 

- Return `True` if the left side operand is greater than the right side operand. Returns `False` otherwise.

| English                                                      | Python                                         |
| ------------------------------------------------------------ | ---------------------------------------------- |
| Is Summer McIntosh the first Canadian to win that many gold medals in a single Summer Olympics? | `mcintosh_gold_count > best_canada_gold_count` |



### Greater than or equal `>=`

- Return `True` if the left side operand is greater or equal than the right side operand. Returns `False` otherwise.

| English                                               | Python             |
| ----------------------------------------------------- | ------------------ |
| The passing grade is 60, is Josh passing this course? | `josh_grade >= 60` |



### Less than `<`

- Return `True` if the left side operand is less than the right side operand. Returns `False` otherwise.
- e.g.: `3 < 6 ` result: `True` , `3 < 2`, result: `False`



| English                                                      | Python                                    |
| ------------------------------------------------------------ | ----------------------------------------- |
| Did Summer McIntosh set a new world record in the 400m butterfly? | `mc_intosh_time < world_record_butterfly` |



### Less than or equal `<=`

- Return `True` if the left side operand is less or equal than the right side operand. Returns `False` otherwise.

| English                                              | Python               |
| ---------------------------------------------------- | -------------------- |
| If the temperature outside below the freezing point? | `temperature <= 0.0` |







✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by running the code. 

<div class="button-container">     
    <a href="https://app.codeboot.org/5.0.0/?init=.fY29tcGFyaXNvbl9jaGFsbGVuZ2VzLnB5~XQAAgADRAAAAAAAAAAARiAToaYFPsVi6rkOY_gtPVhVlVMgMy9wU4vlKRmkTVwrDJddUdRiQhJT3EwSKPiJ8zQXpx7-QY0pis40KWc1I1vWP_QdVVdu0Rerf-ZlAqTc5tMK1TBKFDURcro9LSSbcbpYKde0MLEoG3M-JI9UFvVzEvV_9YtQA.~lang=py-novice.~showLineNumbers=true.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>


```python
a = 11.999
b = 12
print(a < b)
```

```python
a = (30 / 6) + 3
b = 2**3
print(a == b)
```

```python
a = (25 // 10) * 10 
b = 4**2 + 4
print(a != b)
```

```python
a = 10
b = 7**2 +1
print(a >= b)
```
