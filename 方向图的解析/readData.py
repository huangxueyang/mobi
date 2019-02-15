#coding=utf-8
import cv2  
import numpy as np  
import xlwt
import sys
import math
import string
#存放半径数列
list0=[]
list1=[]
list2=[]
#存放色素偏移值
dict0 = {}
#存放数据
dict1 = {}
#创建excel对象
book = xlwt.Workbook(encoding="utf-8")
sheet1 = book.add_sheet('sheet1')
#读取图像 
img = cv2.imread(r"C:\Users\huangxueyang\Desktop\2.png")  
#获取图像分辨率shape(width px,height px,0/1/2)
size = img.shape
w = size[0]
h = size[1]

def search(k=0,n=0):
    #当前颜色标准值red
    Bo = 0
    Go = 0
    Ro = 255
    #当前颜色标准值black
    #Bo = 0
    #Go = 0
    #Ro = 0
    #建立极坐标系
    halfLength = int(w/2)
    #print(halfLength)
    Xo = int(w/2)
    Yo = int(h/2)
    #根据角度设置不同情况下的遍历
    for angle in range(720):
        for radius in range(60,halfLength):
        #按照角度遍历，同一角度下按照半径进行遍历
        #设定读图角度精度0.5°,查找对应的像素值颜色
            X = round(Xo + math.cos(3.1415/360*angle)*radius)
            Y = round(Yo + math.sin(3.1415/360*angle)*radius)
        #rgb值识别,opencv的颜色数据排布为blue,green,red       
            b = img[-Y,X,0]
            g = img[-Y,X,1]
            r = img[-Y,X,2]
            #判断像素值是否属于颜色空间内,存储符合要求的值
            if(b in range(0,5) and g in range(0,5) and r in range(250,256)): #red
            #if(b in range(0,5) and g in range(0,5) and r in range(0,5)):  #black  
                #颜色差值
                value = (b-Bo)**2+(g-Go)**2+(r-Ro)**2
                #记录每个色素的颜色差值
                list2.append(value)
                #每个value对应一个半径
                Radius = (radius-42)/(halfLength-42)*40-40
                value = str(value)
                #{value:Radius}
                dict0[value] = float('%.2F'%Radius) 
            #比较所有满足条件的点的最优解
            if radius == halfLength-1 and list2:
                #选择颜色差值最小的半径，保存数据{angle:radius}
                valueMin = min(list2)
                valueMin = str(valueMin)
                #存储最合适的像素
                radiusP = dict0[valueMin]
                angle = str(angle/2)   
                dict1[angle] = radiusP
                dict0.clear()
                list2.clear()
                print(n)
                n=n+1

def Polar(k=0,l=0):
    for i,j in zip(list0,list1):
        #声明不同象限的角度状态值
        cart_X1 = 0 
        cart_X2 = 0
        cart_X3 = 0
        cart_X4 = 0
        #排除i为0的状态
        i = float(i)
        j = float(j)
        if i==0:
            continue
        #角度值
        if j/i<0 and j>0:
            cart_X1 = math.atan(j/i)*180/3.141+180
        if j/i>0 and j<0:
            cart_X2 = math.atan(j/i)*180/3.141-180
        if j/i>0 and j>0:
            cart_X3 = math.atan(j/i)*180/3.141
        if j/i<0 and j<0:
            cart_X4 = math.atan(j/i)*180/3.141
        cart_X = cart_X1+cart_X2+cart_X3+cart_X4
        cart_X = ('%.1F'%cart_X)
        #半径值
        cart_Y = (i**2 + j**2)**0.5-40
        cart_Y = ('%.1F'%cart_Y)
        dict1[cart_X]=cart_Y
    #字典排序
    #q = sorted(dict1.items(),key=lambda abs:abs[0],reverse=False)
    keys1 = dict1.keys()
    for n in keys1: 
        z = float(n)
        z = float('%.1f' %z)
        keys2.append(z)   
    keys2.sort()
    #输出
    for key_num in keys2:
        strData1 = key_num
        key_num = str(key_num)
        strData2 = dict1[key_num]
        if int(k/200)>0:
            l = 2*int(k/200)+l
            k = 0
        sheet1.write(k,l,strData1)
        sheet1.write(k,l+1,strData2)
        book.save('****.xls')
        k = k+1

def output(k=0,l=0):
    for key in dict1:
        strData1 = key
        strData2 = dict1[key]
        if int(k/200)>0:
            l = 2*int(k/200)+l
            k = 0
        sheet1.write(k,l,strData1)
        sheet1.write(k,l+1,strData2)
        book.save('red2.xls')
        k = k+1
    


if  __name__ == '__main__':
    search()
    output()
    