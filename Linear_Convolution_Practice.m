clc; clear all; close all;
x = input('Enter the first sequence');
h = input('Enter the second sequence');
m = length(x);
n = length(h);

X= [x, zeros(1,n)];
H = [h, zeros(1,m)];

     for i=1:n+m-1
         Y(i) = 0
         for j = 1:m
             if(i-j+1>0)
             Y(i) = Y(i) + H(i-j+1) * X(j)
             end
         end
     end
     Y
     stem(Y)
     ylabel('y[n]');
     xlabel('----->n');
     title('Convolution Of Two Signals');
     
    
    
    