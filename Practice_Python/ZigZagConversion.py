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

   
for row in range(numRow):
    for x in range(len(str)):
        
        if x%(totCycle)==0:
            if row != numRow-1:
                print("A", end='')
                first_space(row, numRow)
            if row != 0:
                print("B", end='')
                second_space(row)
            
        
    print("")
    
print("")
print("Done")

#A--A--
#A-BA-B
#AB-AB-
#B--B--
