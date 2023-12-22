'''for i in range(1,6):
    if i==4:
        break
    print(i)'''
    
for i in range(1, 5): 
    
    for j in range(2, 6): 
        
        if j%i == 0: 
            break
              
        print(i, " ", j)
