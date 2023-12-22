import pandas as pd 
  
# Creating Dictionary 
dict = { 
    'series': ['Friends', 'Money Heist', 'Marvel'], 
    'episodes': [200, 50, 45], 
    'actors': [' David Crane', 'Alvaro', 'Stan Lee'] 
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
print(df)
