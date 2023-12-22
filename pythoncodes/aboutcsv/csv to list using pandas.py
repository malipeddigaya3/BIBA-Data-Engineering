import pandas as pd
df = pd.read_csv('aboutcsv\example.csv', delimiter=',')
l = [list(row) for row in df.values]
print(l)