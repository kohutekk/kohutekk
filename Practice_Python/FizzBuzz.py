## Fizz Buzz

n = input("Enter in a number: ");
arr = [];
for x in range(1, int(n) + 1):
    if (x%3 == 0) and (x%5 == 0):
        arr.append('FizzBuzz')
    elif x%3 == 0:
        arr.append('Fizz')
    elif x%5 == 0:
        arr.append('Buzz')
    else:
        arr.append(x)
print(arr);
