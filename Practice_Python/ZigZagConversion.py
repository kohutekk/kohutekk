## Zigzag Conversion

str = list(input("Enter in a String: "))
numRow = int(input("Enter number of rows: "))
totCycle = numRow + (numRow - 2)

for x in range(numRow):
    print(str[x], end='')
    for y in range(numRow - 2):
        print(" ", end='')
    

print (" ")
print (str)
print (numRow, " - ", totCycle)
