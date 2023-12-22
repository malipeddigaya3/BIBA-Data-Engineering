#union-all values from both sets
p1={'raj','sari','paart'}
p2={1,3,4}
p3={3,1,2}
p12=p1.union(p2)
print(p12)
p23=p2|p3
print(p23)
#intersection-common values
p=p2&p3
print(p)


