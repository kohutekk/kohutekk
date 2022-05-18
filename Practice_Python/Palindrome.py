## Interview problem
## HackerRank

s = list(input("Enter in a String: "))
k = int(input("Enter in a number: "))

ans = 0
for x in range(0, len(s)-1):
    for y in range(x + (k-1), len(s)):
        a = x
        b = y
        test = 0
        while(a < b):
            if s[a]==s[b]:
                a += 1
                b -= 1
                test = 1
                continue
            else:
                test = 0
                break
        if test == 1:
            ans += 1
print (ans)
