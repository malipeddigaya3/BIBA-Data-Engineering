import numpy as np
c = np.zeros((3, 4)) 
print ("An array initialized with all zeros:\n", c) 
  
# Create a constant value array of complex type 
d = np.full((3, 3), 6, dtype = 'complex') 
print ("An array initialized with all 6s." 
            "Array type is complex:\n", d) 
  
# Create an array with random values 
e = np.random.random((2, 2)) 
print ("A random array:\n", e)
