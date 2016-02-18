function [] = Main ()
clc;
clear all;                     
close all;
initialX = [3; 8]; % ��������� �����  
% initialX = [11; 4]; %%%%% ������ ��������� �����  
index = [-31,-34,4,286,388]; % �������� ���� ����������
e = 0.1;                    
H = [index(1)*2, index(3); index(3), index(2)*2];         
% �������� ����� ������ ��� ������ �����������
fileID = fopen('results.txt', 'wt');
if (fileID == -1)
    error('�� ������� ������� ���� ������.');
    return;
end

% ������� ���������� ������� ������
function [] = PlotGraph (v)
% ������� ����������
x_1=2:.1:6;
x_2=5:.1:9;
% x_1=4:.1:12; %%%%% ��� ������ ��������� �����			            
% x_2=3:.1:9;
[x_1,x_2]=meshgrid(x_1,x_2);
w=(index(1)*x_1.^2 +index(2)*x_2.^2 + index(3)*x_1.*x_2 + index(4)*x_1 + index(5)*x_2 );

figure;
hold on;
contour(x_1,x_2,w,30);
plot(x, y, '.-k');
contour(x_1,x_2,w,v);
xlabel('x1');
ylabel('x2');
hold off;
end