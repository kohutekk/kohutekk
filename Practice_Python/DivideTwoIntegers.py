## Divide Two Integers

#moving numbers with in dividend to points of interest
def function(divident, num1):
    divident = num1[0] + num1[1]
    num1[0] = divident
    num1.remove(num1[1])
 
#subtraction
def sub(num1, num2, ans):  
    qu = 0
    while int(num1[0]) >= num2:
        num1[0] = str(int(num1[0]) - num2)
        qu+=1
    return qu

#---------------------------------------------------------------------------------------------------------


#defining
num1 = list(input("Enter the dividend: "))
num2 = input("Enter the divisor: ")
length = len(list(num2))
num2 = int(num2)
ans = 0

#settint up and first subtraction 
divident = num1[0]
for x in range(1, length):
    function(divident, num1)
if int(num1[0]) < num2:
    function(divident, num1)

ans = sub(num1, num2, ans)

#loop statment that ends when num1 ends (x is placec in quotent list)
while len(num1) > 1:
    function(divident, num1)
    ans = (ans * 10) + sub(num1, num2, ans)

#---------------------------------------------------------------------------------------------------------

#first subtraction
sub(num1, num2, qu)
quotent = qu
print(qu, " - ",num1)

#loop statment that ends when num1 ends (x is placec in quotent list)
while len(num1) > 1:
    moving(divident, num1)
    sub(num1, num2, qu)
    quotent = (quotent * 10) + qu

print("The quotent is: ", quotent)
print("The remainder is: ", num1[0])
#use num1[0] as remainder and quotent is the answer
