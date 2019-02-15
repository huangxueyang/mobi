import numpy as np
import pandas as pd 
#import re

data = pd.read_csv('2-2.s2p')
data1 = data.drop([0,1,2,3])
data1.columns = ['a','b','c','d']
#data.re_columns( ['a','b','c','d'])
#添加新的列
data1['e'] = None
data_a = []
data_b = []
data_c = []
#遍历dataframe,数据分割，生成新的dataframe
length = len(data1)
for i in range(length):
    data2 = data1['a'].iloc[i].split('\t')
    data_a.append(data2[0])
    data_b.append(data2[3])
    data_c.append(data2[4])
    data2 = []
print(data_a,data_b,data_c)