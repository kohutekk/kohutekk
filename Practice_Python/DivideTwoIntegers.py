## Divide Two Integers

num1 = (input("Enter the dividend: ")).split()
num2 = (input("Enter the divisor: ")).split()

print(num1)

for x in range(len(num1)):
    divident = "".join(num1[0])
    num1.remove(num1[0])

print(num1)
