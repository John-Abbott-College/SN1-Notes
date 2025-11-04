# Finding Elements in a List

One of the most common tasks you’ll face when working with lists is finding elements within a list maybe for locating a single value, check if an item exists, or finding items matching certain conditions.

## Using the in Operator

The in operator is one of the easiest ways to check if an element exists in a list.

### Example

Let's say we have this delightful list

```py
test = [1,2,3,4,5,6]
```

And we want to check if value 3 exists `in test`? Well we can simply write:

```py
if 3 in test:
    print ("Found value 3")
else:
    print("3 not found")
```

Similarly, we can also check if 9 us `in test`!!

```py
if 9 in test: # wow
    print ("Found value 9")
else:
    print("9 not found")
```

## Resources

- [Swapnoneel Saha's 2024 article](https://keploy.io/blog/community/guide-finding-elements-in-a-list-using-python#example)
