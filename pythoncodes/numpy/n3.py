import numpy as np
f = np.arange(0, 30, 5) 
print(f)
arr = np.array([[1, 2, 3, 4], 
                [5, 2, 4, 2], 
                [1, 2, 0, 1]]) 
  
newarr = arr.reshape(2, 2, 3) 
  
print ("Original array:\n", arr) 
print("---------------") 
print ("Reshaped array:\n", newarr)
arr = np.array([[1, 2, 3], [4, 5, 6]]) 
flat_arr = arr.flatten() 
  
print ("Original array:\n", arr) 
print ("Fattened array:\n", flat_arr)
