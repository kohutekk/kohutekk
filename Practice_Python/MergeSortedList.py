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
    if listA[0] <= listB[0]:
        ans.append(listA[0])
        listA.remove(listA[0])
    else:
        ans.append(listB[0])
        listB.remove(listB[0])
    
list1 = initiation()
list2 = initiation()
list3 = initiation()
anslen = len(list1) + len(list2) + len(list3)
ans = []
print("-------------------------")
    
for x in range(anslen):
    if not list1:
        if not list2:
            ans.append(list3[0])
            list3.remove(list3[0])
        elif not list3:
            ans.append(list2[0])
            list2.remove(list2[0])
        else:
            null1(list2, list3)
    elif not list2:
        if not list3:
            ans.append(list1[0])
            list1.remove(list1[0])
        else:
            null1(list1, list3)
    elif not list3:
        null1(list3)
    else:
        null0()
        
print(ans)
