import pandas as pd
header= ['Name', 'M1 Score', 'M2 Score']
d= [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]
data=pd.DataFrame(d,columns=header)
data.to_csv("aboutcsv\ex.csv",index=False)

