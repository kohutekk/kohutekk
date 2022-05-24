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
    
    if list1[0] < list2[0] and list1[0] < list3[0]:
        print("C", list1[0])
        ans.append(list1[0])
        list1.remove(list1[0])
    elif list2[0] < list1[0] and list2[0] < list3[0]:
        print("C", list2[0])
        ans.append(list2[0])
        list2.remove(list2[0])
    else:
        print("C", list3[0])
        ans.append(list3[0])
        list3.remove(list3[0])
