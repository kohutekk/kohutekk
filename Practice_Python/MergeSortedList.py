#Merge k Sorted Lists

def initiation():
    str = input("Enter list: ")
    return list(map(int, str.split(" ")))
    
def null0():
    if list1[0] <= list2[0] and list1[0] <= list3[0]:
        ans.append(list1[0])
        list1.remove(list1[0])
    elif list2[0] < list1[0] and list2[0] <= list3[0]:
        ans.append(list2[0])
        list2.remove(list2[0])
    else:
        ans.append(list3[0])
        list3.remove(list3[0])
        
def null1(listA, listB):
    print(listA[0], " - ", listB[0])
    if listA[0] <= listB[0]:
        print("1;A")
        ans.append(listA[0])
        listA.remove(listA[0])
    else:
        print("1;B")
        ans.append(listB[0])
        listB.remove(listB[0])

list1 = initiation()
list2 = initiation()
list3 = initiation()
anslen = len(list1) + len(list2) + len(list3)
ans = []
    
for x in range(anslen):
    print("-------------------------")
    print(list1[0], " - ", list2[0], " - ", list3[0])
    if list1[0] is None:
        print("list1 is null")
        if list2[0] is None:
            #null2(list3)
            print("null2")
        elif list3[0] is None:
            #null2(list2)
            print("null2")
        else:
            print("null1")
            null1(list2, list3)
    elif list2[0] is None:
        print("list2 is null")
        if list3[0] is None:
            #null2(list1)
            print("null2")
        else:
            print("null1")
            null1(list1, list3)
    elif list3[0] is None:
        print("null1")
        null1(list3)
    else:
        print("null0")
        null0()
