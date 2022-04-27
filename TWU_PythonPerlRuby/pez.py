#pez.py
#   Recreate the pez.pl program using either python. You must complete one of the two
#programs, but you can do both for extra credit.

print("        Welcome to Pez.py");
print("---------------------------------");

arr = [0,0,0,0,0,0,0,0,0,0];
print("Here is the current array: ");
print(     arr[:]);

print("\nEnter in 10 colors of pez candies:");
i = 0;
while(i < 10):
#	print(str(i + 1) + ". "),
#	arr[i] = raw_input();
	i += 1;

print("\nHere is the array now:");
print(     arr[:]);

print("\nHere is the array being popped:");

while(i > 0):
	i -= 1;
	del arr[i]
	print(     arr[:]);
