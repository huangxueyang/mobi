clear all;
close all;
clc;
deg_min=-180;deg_max=180;mag_min=-55;mag_max=0;
filename1='Matlab_T12.txt';%****************��ȷ���ļ���һ��****************%
filename2='AWR_T12.txt';
filename3='V-1710.txt';
Matlab_T12=[];% �洢����
AWR_T12=[];
F_1710=[];
%%********* �洢ʵ������***********%
fidin=fopen(filename1);                                   % ��txt�ļ� 
while ~feof(fidin)                                      % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin);                                 % ���ļ�����   
    if isempty(tline) | tline==' '                      % �ж��Ƿ����
        continue
    else
        tline=strtrim(tline);                           % ȥ���ո�                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % �ж����ַ��Ƿ�����ֵ
           tline1=str2num(tline);
           Matlab_T12=[Matlab_T12;tline1];                      % ����������У������ݱ��浽e_data��
           continue                                     % ����Ƿ����ּ�����һ��ѭ��
        end
    end
end

fidin=fopen(filename2);                                   % ��txt�ļ� 
while ~feof(fidin)                                      % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin);                                 % ���ļ�����   
    if isempty(tline) | tline==' '                      % �ж��Ƿ����
        continue
    else
        tline=strtrim(tline);                           % ȥ���ո�                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % �ж����ַ��Ƿ�����ֵ
           tline1=str2num(tline);
           AWR_T12=[AWR_T12;tline1];                      % ����������У������ݱ��浽e_data��
           continue                                     % ����Ƿ����ּ�����һ��ѭ��
        end
    end
end

fidin=fopen(filename3);                                   % ��txt�ļ� 
while ~feof(fidin)                                      % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin);                                 % ���ļ�����   
    if isempty(tline) | tline==' '                      % �ж��Ƿ����
        continue
    else
        tline=strtrim(tline);                           % ȥ���ո�                
        if (double(tline(1))>=48 && double(tline(1))<=57) || (double(tline(1))==45)       % �ж����ַ��Ƿ�����ֵ
           tline1=str2num(tline);
           F_1710=[F_1710;tline1];                      % ����������У������ݱ��浽e_data��
           continue                                     % ����Ƿ����ּ�����һ��ѭ��
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%��һ��%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
