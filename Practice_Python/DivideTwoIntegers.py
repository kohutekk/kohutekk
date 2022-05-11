## Divide Two Integers

def function(divident, num1):
    divident = num1[0] + num1[1]
    num1[0] = divident
    num1.remove(num1[1])

num1 = list(input("Enter the dividend: "))
num2 = input("Enter the divisor: ")
length = len(list(num2))

divident = num1[0]
print(num1)
for x in range(1, length):
    function(divident, num1)
    
print(num1[0])
