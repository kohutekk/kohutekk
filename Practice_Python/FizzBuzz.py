## Fizz Buzz

num = input("Enter in a number: ");
array = [];
for x in range(1, int(num) + 1):
    if (x%3 == 0) and (x%5 == 0):
        array.append('FizzBuzz')
    elif x%3 == 0:
        array.append('Fizz')
    elif x%5 == 0:
        array.append('Buzz')
    else:
        array.append(x)
print(array);
