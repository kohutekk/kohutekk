## Divide Two Integers

num1 = list(input("Enter the dividend: "))
num2 = input("Enter the divisor: ")
length = len(list(num2))

print(num1)

for x in range(length):
    divident = "".add(num1[x])
    num1.remove(num1[x])
    print(num1[x], " - ", divident)

print(num1)
