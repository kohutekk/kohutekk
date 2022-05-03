## Zigzag Conversion

str = list(input("Enter in a String: "))
numRow = int(input("Enter number of rows: "))
totCycle = numRow + (numRow - 2)
print (" ")

for x in range(numRow):
    print(x, end='')
    for y in range(x, numRow - 2):
        print("-", end='')
    if x == (numRow-1) or x == 0:
        print(end='')
    else:
        print(x, end='')
    for y in range(x - 1):
        print("-", end='')
    print (" ")
    

print (" ")
print ("Done")

# function to print first element then .remove() it
# call funtion everytime 'x' is printed
# replace '-' to ' '
# place all loops within another loop
#       to make sure the list has more elements
