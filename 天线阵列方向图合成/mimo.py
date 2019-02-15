import numpy as np 
import pandas as pd 


#天线阵方向图数据空间m*n*k,m x n的方向图矩阵 单元方向图含k个数据（取决于频率精度）
#AntennaArray1 = np.empty((3,4,12,361))
#x|y，num == 11，单元数据12*11*361:每个频率下面，每个单元阵子的361个幅度数据
AntennaArray1 = np.empty((12,11,361))
#频率 GHZ
name_freq = ['1.71','1.77','1.83','1.885','1.9','1.915','2.01','2.018','2.025','2.575','2.6','2.635']
#方向图类型状态字 '0deg' '45deg'
name_angle = '0deg'
#阵子间距
DisL = np.array([0.1,0.1,0.1,0.2,0.3,0.4,0.1,0.2,0.2,0.3,0.5])
k_list = np.arange(361,dtype=np.float64)
#前端返回文件命名列表
data = ['01','02','03','04','05','06','07','08','09','10','11']
#文件类型状态字 'csv' 'txt' 's2p'
data_status = 'csv'
dataRadio1 = pd.read_csv('./s2p/2-1.csv')
dataRadio2 = pd.read_csv('./s2p/2-2.csv')
dataRadio3 = pd.read_csv('./s2p/2-3.csv')
dataRadio4 = pd.read_csv('./s2p/2-4.csv')
dataRadio5 = pd.read_csv('./s2p/2-5.csv')
dataRadio6 = pd.read_csv('./s2p/2-6.csv')
dataRadio7 = pd.read_csv('./s2p/2-7.csv')
dataRadio8 = pd.read_csv('./s2p/2-8.csv')
dataRadio9 = pd.read_csv('./s2p/2-9.csv')
dataRadio10 = pd.read_csv('./s2p/2-10.csv')
dataRadio11 = pd.read_csv('./s2p/2-11.csv')
dataRadio = []
dataRadio.append(dataRadio1)
dataRadio.append(dataRadio2)
dataRadio.append(dataRadio3)
dataRadio.append(dataRadio4)
dataRadio.append(dataRadio5)
dataRadio.append(dataRadio6)
dataRadio.append(dataRadio7)
dataRadio.append(dataRadio8)
dataRadio.append(dataRadio9)
dataRadio.append(dataRadio10)
dataRadio.append(dataRadio11)
print(dataRadio)
#幅度
Am = np.empty((11,201))
#相位
Ph = np.empty((11,201))
for data_Radio in dataRadio:
    ii=0
    #频率
    hz = data_Radio['hz']
    for zz in hz:
        nn = 0
        for gg in name_freq:
            gzz = str(float("%.2f"%(zz/1000000000)))
            if(gg==gzz):
                #Am.append(dataRadio[ii]['am'][nn])
                Am[ii][nn] = dataRadio[ii]['am'][nn]
                #Ph.append(dataRadio[ii]['ph'][nn])
                Ph[ii][nn] = dataRadio[ii]['am'][nn]
        nn=nn+1
    ii=ii+1
#columns1 = []
#index = []

if len(data):
    #文件类型判断
    if data_status =='csv':
        #m=0
        #n=0
        #v=0
        n=0
        v=0
        #批量导入命名空间文件
        for i in data:
            if i:
                #print(m,n)
            #读取不同频点下的单元方向图数据,name:文件列名
                for j in name_freq:
                    if j:
                        name = 'Freq=' +"'"+ j +"GHz'"  +  ' Phi=' +"'" + name_angle +"'"
                        #读取单元天线阵子方向图数据“i.csv” data_name:文件名
                        #print(name)
                        data_name = i+".csv"
                        datafile = pd.read_csv(data_name)
                        #datafile1 = datafile.drop([0,1,2,3,4])
                        am = datafile[name].tolist() #读取对应列的幅度
                        #转换成numpy数据
                        AntennaUnit = np.array(am,dtype='float64')
                        #构造方向图dataframe
                        #生成列索引为方向图名
                        #columns1.append(i)
                        #遍历生成天线矩阵数据 v：频率 n：单元序号
                        AntennaArray1[v][n] = AntennaUnit
                        v=v+1
                        if v==12:
                            v=0
                            n=n+1
                        #AntennaArray1[m][n][v] = AntennaUnit
                        #v=v+1
                        #if v==12:
                        #    v=0
                        #    n=n+1
                        #    if n==4:
                        #        n=0
                        #        m=m+1
                        #每次读取后重置列表
                        am = []
    #print(AntennaArray1)

if len(data):
    #文件类型判断
    if data_status =='txt':
        m=0
        n=0
        #批量导入命名空间文件
        for i in data:
            #读取不同频点下的单元方向图数据,name:文件列名
                for j in name_freq:
                    if j:
                        name = "dB(rETotal) [] - Freq='"+ j +" Phi="+ name_angle 
                        #读取单元天线阵子方向图数据“i.csv” data_name:文件名
                        data_name = i+".txt"
                        datafile = pd.read_csv(data_name)
                        #清除无关数据并转换成列
                        datafile1 = datafile.drop([0,1,2,3,4])
                        am = datafile1["name"].tolist() #读取对应列的幅度
                        #转换成numpy数据
                        AntennaUnit = np.array(am,dtype='float64')
                        #构造方向图dataframe
                        #生成列索引为方向图名
                        #columns1.append(i)
                        #遍历生成天线矩阵数据，m x n的天线阵
                        AntennaArray1[m][n] = AntennaUnit
                        if n==4:
                            n=0
                            m=m+1
                        n=n+1
                        #每次读取后重置列表
                        am = []
if len(data):
    #文件类型判断
    if data_status =='s2p':
        m=0
        n=0
        #批量导入命名空间文件
        for i in data:
            #读取不同频点下的单元方向图数据,name:文件列名
                for j in name_freq:
                    if j:
                        name = "dB(rETotal) [] - Freq='"+ j +" Phi="+ name_angle 
                        #读取单元天线阵子方向图数据“i.csv” data_name:文件名
                        data_name = i+".s2p"
                        datafile = pd.read_csv(data_name)
                        #datafile1 = datafile.drop([0,1,2,3,4])
                        am = datafile1["name"].tolist() #读取对应列的幅度
                        #转换成numpy数据
                        AntennaUnit = np.array(am,dtype='float64')
                        #构造方向图dataframe
                        #生成列索引为方向图名
                        #columns1.append(i)
                        #遍历生成天线矩阵数据，m x n的天线阵
                        AntennaArray1[m][n] = AntennaUnit
                        if n==4:
                            n=0
                            m=m+1
                        n=n+1
                        #每次读取后重置列表
                        am = []

    #生成多维dataframe
    #dataframe1 = pd.DataFrame(AntennaArray1,columns = 'columns1',index = 'kind1')       


#方向图合成 方向图数据 频率 间距
def CalEleMat(k_list, Freq, Disl, f):  # 这个函数是求解定值部分，不含幅度和相位，相当于求解公式中的V
    # 并且去掉了for循环，改用了效率更高的矩阵运算
    N = len(Disl)  # N是单元数，Disl是关于d的列表
    Disl=Disl.reshape(Disl.shape[0],1)
    SpeedOfLight = 0.020958450219516818  # 2π/c的值，即换算k=SpeedOfLight*Freq
    AngleToRadian = 0.017453292519943295  # π/180的值
    EleMatLen = len(k_list)+1  # 需要计算的角度k的值
    EleMat = np.zeros((N, EleMatLen), dtype=np.complex128)  # f（theta）的矩阵，N行K列
    ThetaVec = np.array(k_list)  # 把角度列表变成一个一维数组
    ThetaSinVec = np.sin(ThetaVec * AngleToRadian)  # 1维的，sink值组成的数组
    # for n in range(N):
    #     for k in range(EleMatLen):
    #         CellPatAm = np.power(10, f[n][k] * 20)  # 电平转成非db
    #print(f)
    CellPatAm = np.power(10, f / 20)  # 电平转成非db

    EleMat = CellPatAm * (np.exp(-1j * SpeedOfLight * ThetaSinVec * Disl * Freq))  # DisL是阵子间距的d列表，需要做行列变换，变成n行单列的数组
    #EleMat[n, k] = CellPatAm * np.exp(-1j * SpeedOfLight * ThetaSinVec[k] * Disl[n] * Freq)
    print(EleMat)
    return EleMat


def Cal(Am, Ph, k_list, Freq, Disl, f):  # Am：幅度，Ph:相位，k_list：Theta角列表，Freq：频点，Disl：间距d列表，f：原始方向图矩阵

    # Am=np.array(Am)
    # Ph=np.array(Ph,dtype=np.float64)

    AngleToRadian = 0.017453292519943295  # π/180的值
    W = np.zeros(11)
    for n in range(len(Am)):
        W[n] = Am[n] * np.exp(-1j * Ph[n] * AngleToRadian)  # 每组幅度相位，对应一个W一维矩阵
    # W=Am*np.exp(-1j * Ph * AngleToRadian)
    EleMat = CalEleMat(k_list, Freq, Disl, f)
    PatData = np.dot(W, EleMat)
    return k_list, PatData
ffff = float(name_freq[0])*(10**9)
#print(ffff)
#CalEleMat(k_list,ffff,DisL,AntennaArray1[0])
Cal(Am,Ph,k_list,ffff,DisL,AntennaArray1[0])