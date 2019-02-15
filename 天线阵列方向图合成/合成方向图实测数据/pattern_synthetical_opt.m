% 
clear all;
close all;
clc;
c=3e2;%光速单位M
d=0.125  %%单元间距
theta=[-180:1:180];
deg_min=-28;deg_max=40;mag_min=-35;mag_max=0;
Freq=[1710 1770 1830 1885 1900 1915 2010 2018 2025 2575 2600 2635];
% Freq=[1710 1830 1885 1915 2010 2025 2575 2600 2635];
wavelength=c./Freq;%%波长
% 
filename1='12-1.S2P';filename2='12-2.S2P';filename3='12-3.S2P';filename4='12-4.S2P';filename5='12-5.S2P';filename6='12-6.S2P';
filename7='12-7.S2P';filename8='12-8.S2P';filename9='12-9.S2P';filename10='12-10.S2P';filename11='12-11.S2P';
data_12_1=[];data_12_2=[];data_12_3=[];data_12_4=[];data_12_5=[];data_12_6=[];data_12_7=[];data_12_8=[];
data_12_9=[];data_12_10=[];data_12_11=[];
filename31='01.txt';filename32='02.txt';filename33='03.txt';filename34='04.txt';filename35='05.txt';filename36='06.txt';
filename37='07.txt';filename38='08.txt';filename39='09.txt';filename40='10.txt';filename41='11.txt';
pattern_1=[];pattern_2=[];pattern_3=[];pattern_4=[];pattern_5=[];pattern_6=[];pattern_7=[];pattern_8=[];
pattern_9=[];pattern_10=[];pattern_11=[];
fidin=fopen(filename1);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_1=[data_12_1;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename2);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_2=[data_12_2;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename3);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_3=[data_12_3;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename4);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_4=[data_12_4;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename5);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_5=[data_12_5;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename6);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_6=[data_12_6;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename7);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_7=[data_12_7;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename8);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_8=[data_12_8;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename9);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_9=[data_12_9;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename10);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_10=[data_12_10;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename11);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           data_12_11=[data_12_11;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end
%%%%%********************************************%%%%%%%%%%%
fidin=fopen(filename31);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_1=[pattern_1;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename32);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_2=[pattern_2;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename33);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_3=[pattern_3;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename34);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_4=[pattern_4;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename35);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_5=[pattern_5;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename36);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_6=[pattern_6;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename37);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_7=[pattern_7;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename38);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_8=[pattern_8;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename39);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_9=[pattern_9;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename40);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_10=[pattern_10;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename41);  
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           pattern_11=[pattern_11;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end
[m,n]=size(Freq);
for i=1:1:n
    kd(:,i+1)=(2*pi*d*sin(theta*pi/180)./wavelength(1,i));
end
kd(:,1)=theta;
 % % % % % % %提取T12探到的S21数据，并且将幅度和相位表达的关系，转化为实部和虚部



t12_1_normal(:,2)=10.^(data_12_1(:,4)./20);     % 去除dB格式
t12_1_normal(:,3)=(pi/180).*data_12_1(:,5);    %%度数转化为pi 
T12_1(:,1)=data_12_1(:,1);
T12_1(:,2)=t12_1_normal(:,2).*(cos(t12_1_normal(:,3))+sin(t12_1_normal(:,3))*j);%%%%%%%%欧拉公式

t12_2_normal(:,2)=10.^(data_12_2(:,4)./20);     % 去除dB格式
t12_2_normal(:,3)=(pi/180).*data_12_2(:,5);    %%度数转化为pi 
T12_2(:,1)=data_12_2(:,1);
T12_2(:,2)=t12_2_normal(:,2).*(cos(t12_2_normal(:,3))+sin(t12_2_normal(:,3))*j);%%%%%%%%欧拉公式

t12_3_normal(:,2)=10.^(data_12_3(:,4)./20);     % 去除dB格式
t12_3_normal(:,3)=(pi/180).*data_12_3(:,5);    %%度数转化为pi 
T12_3(:,1)=data_12_3(:,1);
T12_3(:,2)=t12_3_normal(:,2).*(cos(t12_3_normal(:,3))+sin(t12_3_normal(:,3))*j);%%%%%%%%欧拉公式

t12_4_normal(:,2)=10.^(data_12_4(:,4)./20);     % 去除dB格式
t12_4_normal(:,3)=(pi/180).*data_12_4(:,5);    %%度数转化为pi 
T12_4(:,1)=data_12_4(:,1);
T12_4(:,2)=t12_4_normal(:,2).*(cos(t12_4_normal(:,3))+sin(t12_4_normal(:,3))*j);%%%%%%%%欧拉公式

t12_5_normal(:,2)=10.^(data_12_5(:,4)./20);     % 去除dB格式
t12_5_normal(:,3)=(pi/180).*data_12_5(:,5);    %%度数转化为pi 
T12_5(:,1)=data_12_5(:,1);
T12_5(:,2)=t12_5_normal(:,2).*(cos(t12_5_normal(:,3))+sin(t12_5_normal(:,3))*j);%%%%%%%%欧拉公式

t12_6_normal(:,2)=10.^(data_12_6(:,4)./20);     % 去除dB格式
t12_6_normal(:,3)=(pi/180).*data_12_6(:,5);    %%度数转化为pi 
T12_6(:,1)=data_12_6(:,1);
T12_6(:,2)=t12_6_normal(:,2).*(cos(t12_6_normal(:,3))+sin(t12_6_normal(:,3))*j);%%%%%%%%欧拉公式

t12_7_normal(:,2)=10.^(data_12_7(:,4)./20);     % 去除dB格式
t12_7_normal(:,3)=(pi/180).*data_12_7(:,5);    %%度数转化为pi 
T12_7(:,1)=data_12_7(:,1);
T12_7(:,2)=t12_7_normal(:,2).*(cos(t12_7_normal(:,3))+sin(t12_7_normal(:,3))*j);%%%%%%%%欧拉公式

t12_8_normal(:,2)=10.^(data_12_8(:,4)./20);     % 去除dB格式
t12_8_normal(:,3)=(pi/180).*data_12_8(:,5);    %%度数转化为pi 
T12_8(:,1)=data_12_8(:,1);
T12_8(:,2)=t12_8_normal(:,2).*(cos(t12_8_normal(:,3))+sin(t12_8_normal(:,3))*j);%%%%%%%%欧拉公式

t12_9_normal(:,2)=10.^(data_12_9(:,4)./20);     % 去除dB格式
t12_9_normal(:,3)=(pi/180).*data_12_9(:,5);    %%度数转化为pi 
T12_9(:,1)=data_12_9(:,1);
T12_9(:,2)=t12_9_normal(:,2).*(cos(t12_9_normal(:,3))+sin(t12_9_normal(:,3))*j);%%%%%%%%欧拉公式

t12_10_normal(:,2)=10.^(data_12_10(:,4)./20);     % 去除dB格式
t12_10_normal(:,3)=(pi/180).*data_12_10(:,5);    %%度数转化为pi 
T12_10(:,1)=data_12_10(:,1);
T12_10(:,2)=t12_10_normal(:,2).*(cos(t12_10_normal(:,3))+sin(t12_10_normal(:,3))*j);%%%%%%%%欧拉公式

t12_11_normal(:,2)=10.^(data_12_11(:,4)./20);     % 去除dB格式
t12_11_normal(:,3)=(pi/180).*data_12_11(:,5);    %%度数转化为pi 
T12_11(:,1)=data_12_11(:,1);
T12_11(:,2)=t12_11_normal(:,2).*(cos(t12_11_normal(:,3))+sin(t12_11_normal(:,3))*j);%%%%%%%%欧拉公式



%%%%%%%%%%%%%%%%%%%%%%%处理单元方向图%%%%%%%
[m1,n1]=size(pattern_1);
for i=2:1:n1
  pattern_1_normal(:,i)=10.^(pattern_1(:,i)./20);     % 去除dB格式  
end
 pattern_1_normal(:,1)=pattern_1(:,1);
 
 [m1,n1]=size(pattern_2);
for i=2:1:n1
  pattern_2_normal(:,i)=10.^(pattern_2(:,i)./20);     % 去除dB格式  
end
 pattern_2_normal(:,1)=pattern_2(:,1);
 
[m1,n1]=size(pattern_3);
for i=2:1:n1
  pattern_3_normal(:,i)=10.^(pattern_3(:,i)./20);     % 去除dB格式  
end
 pattern_3_normal(:,1)=pattern_3(:,1);
 
[m1,n1]=size(pattern_4);
for i=2:1:n1
  pattern_4_normal(:,i)=10.^(pattern_4(:,i)./20);     % 去除dB格式  
end
 pattern_4_normal(:,1)=pattern_4(:,1);
 
[m1,n1]=size(pattern_5);
for i=2:1:n1
  pattern_5_normal(:,i)=10.^(pattern_5(:,i)./20);     % 去除dB格式  
end
 pattern_5_normal(:,1)=pattern_5(:,1); 
 
 
 [m1,n1]=size(pattern_6);
for i=2:1:n1
  pattern_6_normal(:,i)=10.^(pattern_6(:,i)./20);     % 去除dB格式  
end
 pattern_6_normal(:,1)=pattern_6(:,1);
 
 [m1,n1]=size(pattern_7);
for i=2:1:n1
  pattern_7_normal(:,i)=10.^(pattern_7(:,i)./20);     % 去除dB格式  
end
 pattern_7_normal(:,1)=pattern_7(:,1);
 
[m1,n1]=size(pattern_8);
for i=2:1:n1
  pattern_8_normal(:,i)=10.^(pattern_8(:,i)./20);     % 去除dB格式  
end
 pattern_8_normal(:,1)=pattern_8(:,1);
 
[m1,n1]=size(pattern_9);
for i=2:1:n1
  pattern_9_normal(:,i)=10.^(pattern_9(:,i)./20);     % 去除dB格式  
end
 pattern_9_normal(:,1)=pattern_9(:,1);
 
[m1,n1]=size(pattern_10);
for i=2:1:n1
  pattern_10_normal(:,i)=10.^(pattern_10(:,i)./20);     % 去除dB格式  
end
 pattern_10_normal(:,1)=pattern_10(:,1);
 
 [m1,n1]=size(pattern_11);
for i=2:1:n1
  pattern_11_normal(:,i)=10.^(pattern_11(:,i)./20);     % 去除dB格式  
end
 pattern_11_normal(:,1)=pattern_11(:,1);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 [mk,nk]=size(kd);
for i=2:1:nk
 kd_1(:,i)=cos(0)+j*sin(0);                    %%%%%%%%%%%%%%%%%%%%%%%%这里的处理为什么不能放在下面？？？？？
 kd_2(:,i)=cos(kd(:,i))+j*sin(kd(:,i));
 kd_3(:,i)=cos(2*kd(:,i))+j*sin(2*kd(:,i));
 kd_4(:,i)=cos(3*kd(:,i))+j*sin(3*kd(:,i));
 kd_5(:,i)=cos(4*kd(:,i))+j*sin(4*kd(:,i));
 kd_6(:,i)=cos(5*kd(:,i))+j*sin(5*kd(:,i));
 kd_7(:,i)=cos(6*kd(:,i))+j*sin(6*kd(:,i));
 kd_8(:,i)=cos(7*kd(:,i))+j*sin(7*kd(:,i));
 kd_9(:,i)=cos(8*kd(:,i))+j*sin(8*kd(:,i));
 kd_10(:,i)=cos(9*kd(:,i))+j*sin(9*kd(:,i));
 kd_11(:,i)=cos(10*kd(:,i))+j*sin(10*kd(:,i));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

 [m,n]=size(Freq);
 [m1,n1]=size(T12_1);
for i=1:1:n
    for j=1:1:m1
      b(j,i)=abs(Freq(1,i)-T12_1(j,1)/10^6);   
    end
end
for i=1:1:n
[xx,mm]=min(b(:,i));
% array_1(1,i)=mm;     %%%%选取所需频点所在的行数
T12_1_F(2,i)=T12_1(mm,2);
T12_2_F(2,i)=T12_2(mm,2);
T12_3_F(2,i)=T12_3(mm,2);
T12_4_F(2,i)=T12_4(mm,2);
T12_5_F(2,i)=T12_5(mm,2);
T12_6_F(2,i)=T12_6(mm,2);
T12_7_F(2,i)=T12_7(mm,2);
T12_8_F(2,i)=T12_8(mm,2);
T12_9_F(2,i)=T12_9(mm,2);
T12_10_F(2,i)=T12_10(mm,2);
T12_11_F(2,i)=T12_11(mm,2);
end
T12_1_F(1,:)=Freq';T12_2_F(1,:)=Freq';T12_3_F(1,:)=Freq';T12_4_F(1,:)=Freq';T12_5_F(1,:)=Freq';T12_6_F(1,:)=Freq';
T12_7_F(1,:)=Freq';T12_8_F(1,:)=Freq';T12_9_F(1,:)=Freq';T12_10_F(1,:)=Freq';T12_11_F(1,:)=Freq';

[ma,nb]=size(T12_1_F);
 for i=1:1:nb
    E1(:,i+1)=pattern_1_normal(:,i+1).*T12_1_F(2,i).*kd_1(:,i+1);
    E2(:,i+1)=pattern_2_normal(:,i+1).*T12_2_F(2,i).*kd_2(:,i+1);
    E3(:,i+1)=pattern_3_normal(:,i+1).*T12_3_F(2,i).*kd_3(:,i+1);
    E4(:,i+1)=pattern_4_normal(:,i+1).*T12_4_F(2,i).*kd_4(:,i+1);
    E5(:,i+1)=pattern_5_normal(:,i+1).*T12_5_F(2,i).*kd_5(:,i+1);
    E6(:,i+1)=pattern_6_normal(:,i+1).*T12_6_F(2,i).*kd_6(:,i+1);
    E7(:,i+1)=pattern_7_normal(:,i+1).*T12_7_F(2,i).*kd_7(:,i+1);
    E8(:,i+1)=pattern_8_normal(:,i+1).*T12_8_F(2,i).*kd_8(:,i+1);
    E9(:,i+1)=pattern_9_normal(:,i+1).*T12_9_F(2,i).*kd_9(:,i+1);
    E10(:,i+1)=pattern_10_normal(:,i+1).*T12_10_F(2,i).*kd_10(:,i+1);
    E11(:,i+1)=pattern_11_normal(:,i+1).*T12_11_F(2,i).*kd_11(:,i+1);
    E_total(:,i+1)=E1(:,i+1)+E2(:,i+1)+E3(:,i+1)+E4(:,i+1)+E5(:,i+1)+E6(:,i+1)+E7(:,i+1)+E8(:,i+1)+E9(:,i+1)+E10(:,i+1)+E11(:,i+1);
    E_total_abs(:,i+1)=abs(E_total(:,i+1));
    dB_E_total_abs(:,i+1)=20*log10(E_total_abs(:,i+1));
    E_total_normal(:,i+1)=dB_E_total_abs(:,i+1)-max(dB_E_total_abs(:,i+1));
 end
E_total_normal(:,1)=theta';
save Matlab_T12.txt -ascii E_total_normal

plot(E_total_normal(:,1),E_total_normal(:,2),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,3),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,4),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,5),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,6),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,7),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,8),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,9),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,10),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,11),'r-');
hold on;
plot(E_total_normal(:,1),E_total_normal(:,12),'r-');

