## Zigzag Conversion

#Functions to build each line
def first_space(row, numRow):
    for a in range(row, numRow - 2):
        print("-", end='')
        
def second_space(row):
    for a in range(row - 1):
        print("-", end='')

#Intro
str = list(input("Enter in a String: "))
numRow = int(input("Enter number of rows: "))
totCycle = numRow + (numRow - 2)
print(len(str))
   
for row in range(numRow):
    for x in range(len(str)):
        
        if x == 0 and ((x + row)<len(str)):
            print(str[x + row], end='')
            first_space(row, numRow)
        
        elif x%(totCycle) == 0:
            if (row != numRow-1) and ((x - row)<len(str)):
                print(str[x - row], end='')
            second_space(row)
            if (row != 0) and ((x + row)<len(str)):
                print(str[x + row], end='')
            first_space(row, numRow)
            
    print("")
    
print("")
print("Done")
