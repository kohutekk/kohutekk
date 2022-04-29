## Add Two Numbers

n1 = (input("Enter in three single digit numbers, with a space between each one: ")).split();
num = n1[0];
n1[0] = n1[2];
n1[2] = num;
num1 = "".join(n1);

n2 = (input("Now, enter in three more single digit numbers, with a space between each one: ")).split();
num = n2[0];
n2[0] = n2[2];
n2[2] = num;
num2 = "".join(n2);

ans = int(num1) + int(num2);
answer = [int(i) for i in str(ans)];
print (answer);

#need a method to reverse string arrays
