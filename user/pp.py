import sys
  
text1 = ''
for i in range(1,len(sys.argv)):
    text1 = text1+" "+sys.argv[i]

print(text1)