#Merge k Sorted Lists

def initiation():
    str = input("Enter list: ")
    return str.split(' ')

list1 = initiation()
list2 = initiation()
list3 = initiation()

anslen = len(list1) + len(list2) + len(list3)

print(anslen)
print(list1)
print(list2)
print(list3)

for x in range(anslen):
    print("Start")
    if list1[0] > list2[0]:
        if list2[0] < list3[0]:
            print("A", list2[0])
            ans.add(list2[0])
            list2.remove(list2[0])
        else:
            print("B", list3[0])
            ans.add(list3[3])
            list3.remove(list3[0])
    if list1[0] < list2[0]:
        if list1[0] < list3[0]:
            print("C", list1[0])
            ans.add(list1[0])
            list1.remove(list1[0])
        else:
            print("D", list3[0])
            ans.add(list3[0])
            list3.remove(list3[0])
