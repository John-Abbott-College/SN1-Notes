**Question:**

Write a Python code where the user has a limited number of attempts to guess a secret number, and the program prints a special message if the user fails to guess correctly within the given attempts? Also, what will happen when the user guesses the number correctly?

```python
secret_number = 9
guess_cont = 0
guess_limit = 3
while guess_cont < guess_limit:
    guess = int(input("Enter your guess: "))
    guess_cont += 1
    if guess == secret_number:
        print("Your guess is correct")
        break
else:
    print("Sorry, you failed")
```

