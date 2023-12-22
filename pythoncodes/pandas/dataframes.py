import pandas as pd

d = {
  "names": ['abhi','niyu','chin','nick'],
  "ages": [20, 30, 45,34]
}

#load data into a DataFrame object:
df = pd.DataFrame(d)

print(df) 
print(df.loc[0])