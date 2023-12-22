'''count = 0
while (count < 3): 
    count = count + 1
    print("Hello World") 
else:
    print("in else block")'''

#else block is only executed when while block gives false ,
# so, else block is used to confirm that while loop has executed successfully.
# and it stops when it becomes false
c=1
while c<10:
    print(c)
    c=c+1
    if c==5:
        break
else:
    print("else block")