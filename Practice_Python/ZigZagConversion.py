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
print("")
   
for row in range(numRow):
    for x in range(len(str)):
        
        if x%(totCycle)==0:
            if x!= 0:
                print(x - int(row), end='')
                second_space(row)
            print(x + int(row), end='')
            first_space(row, numRow)
    print("")
    
print("")
print("Done")
