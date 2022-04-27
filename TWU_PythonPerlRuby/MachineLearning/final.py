import numpy as np
name = []
x = []
y = [] 
z = []
a = []
grade = []

import csv
with open('grades.txt','r') as file:
	reader = csv.reader(file, delimiter=' ')
	for row in reader:
		name.append(row[0])
		x.append(row[1])
		y.append(row[2])
		z.append(row[3])
x = [int(x) for x in x]
y = [int(y) for y in y]
z = [int(z) for z in z]
a = np.add(x, y)
a = np.add(a, z)
a = a/3

[grade.append("Fail") if i < 70 else grade.append("Pass") for i in a]

for i in range(0, len(a)):
		print(name[i], " has ", grade[i], " this class.")


