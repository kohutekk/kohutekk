#Merge k Sorted Lists

def initiation():
    str = input("Enter list: ")
    return list(map(int, str.split(" ")))
    
def main():
    print(list1[0], " - ", list2[0], " - ", list3[0])
    if list1[0] <= list2[0] and list1[0] <= list3[0]:
        print("A")
        ans.append(list1[0])
        list1.remove(list1[0])
    elif list2[0] < list1[0] and list2[0] <= list3[0]:
        print("B")
        ans.append(list2[0])
        list2.remove(list2[0])
    else:
        print("C")
        ans.append(list3[0])
        list3.remove(list3[0])

list1 = initiation()
list2 = initiation()
list3 = initiation()
anslen = len(list1) + len(list2) + len(list3)
ans = []
    
for x in range(anslen):
    main()
