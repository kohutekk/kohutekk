## Add Two Numbers
def my_function(arr):
    a = len(arr) - 1
    for x in range(len(arr)//2):
        num = arr[x]
        arr[x] = arr[a]
        arr[a] = num
        a -= 1

n1 = (input("Enter in three single digit numbers, with a space between each one: ")).split()
my_function(n1)
num1 = "".join(n1)

n2 = (input("Now, enter in three more single digit numbers, with a space between each one: ")).split()
my_function(n2)
num2 = "".join(n2)

ans = int(num1) + int(num2)
answer = [int(i) for i in str(ans)]
my_function(answer)
print (answer)
