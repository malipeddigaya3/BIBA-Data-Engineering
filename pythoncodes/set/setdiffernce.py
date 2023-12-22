s1=set()
s2=set()
for i in range(1,6):
    s1.add(i)
for i in range(4,9):
    s2.add(i)
print(s1)
print(s2)
s3=s1.difference(s2)
print(s3)
s4=s1-s2
print(s4)
s5=s2-s1
print(s5)
s5.clear()
print(s5)

