import csv 
  
with open('aboutcsv\example.csv', 'r') as file: 
  
    # Return a reader object which will 
    # iterate over lines in the given csvfile 
    obj = csv.reader(file) 
  
    # convert string to list 
    list_of_csv = list(obj) 
  
    print(list_of_csv) 
