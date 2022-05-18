## Interview problem
## https://codingbat.com/prob/p160545

# Given a string, return a "rotated left 2" version where the first 2 chars are moved 
# to the end. The string length will be at least 2.

# left2('Hello') → 'lloHe'
# left2('java') → 'vaja'
# left2('Hi') → 'Hi'

def left2(str):
  ans = list(str)
  
  ans.append(ans[0])
  ans.append(ans[1])
  
  ans.remove(ans[0])
  ans.remove(ans[0])
  
  somethin = "".join(ans)
  
  return somethin
