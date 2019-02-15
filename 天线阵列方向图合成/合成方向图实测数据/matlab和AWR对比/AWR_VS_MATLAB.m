clear all;
close all;
clc;
deg_min=-180;deg_max=180;mag_min=-55;mag_max=0;
filename1='Matlab_T12.txt';%****************请确保文件名一致****************%
filename2='AWR_T12.txt';
filename3='V-1710.txt';
Matlab_T12=[];% 存储数据
AWR_T12=[];
F_1710=[];
%%********* 存储实测数据***********%
fidin=fopen(filename1);                                   % 打开txt文件 
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           Matlab_T12=[Matlab_T12;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename2);                                   % 打开txt文件 
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           AWR_T12=[AWR_T12;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end

fidin=fopen(filename3);                                   % 打开txt文件 
while ~feof(fidin)                                      % 判断是否为文件末尾               
    tline=fgetl(fidin);                                 % 从文件读行   
    if isempty(tline) | tline==' '                      % 判断是否空行
        continue
    else
        tline=strtrim(tline);                           % 去掉空格                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % 判断首字符是否是数值
           tline1=str2num(tline);
           F_1710=[F_1710;tline1];                      % 如果是数字行，把数据保存到e_data中
           continue                                     % 如果是非数字继续下一次循环
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%归一化%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F_1710(:,2)=F_1710(:,2)-max(F_1710(:,2));
for i=1:1:size(F_1710(:,1))-2
    F1_1710(i,1)=F_1710(i+1,1);
    F1_1710(i,2)=F_1710(i+1,2);
end

subplot(2,1,1);
plot(Matlab_T12(:,1),Matlab_T12(:,2),'b-');
hold on
plot(F1_1710(:,1),F1_1710(:,2),'k-');
grid;
axis([deg_min,deg_max,mag_min,mag_max]);
legend('Matlab','Mea');

subplot(2,1,2);
plot(AWR_T12(:,1)-180,AWR_T12(:,2),'r-');
% hold on
% plot(Matlab_T12(:,1),Matlab_T12(:,10),'b-');
hold on
plot(F1_1710(:,1),F1_1710(:,2),'k-');
grid;
axis([deg_min,deg_max,mag_min,mag_max]);
legend('AWR','Mea');



figure(2)
plot(AWR_T12(:,1)-180,AWR_T12(:,2),'r-');
hold on
plot(Matlab_T12(:,1),Matlab_T12(:,2),'b-');
grid;
axis([deg_min,deg_max,mag_min,mag_max]);
legend('AWR','Matlab');
