clc; close all ; clear all ;
b=input('Enter the co-efficients of b ie x[n]=');
a=input('Enter the co-efficients of a ie y[n]=');
N=input('Enter the length of response required N=');
n=0:N-1;
x=cos(0.05*pi*n);
y=filter(b,a,x)
subplot(211); 
stem(n,x);
title('Steady input');
subplot(212); 
stem(n,y); 
title('Steady State response');

Result: Enter the co-efficient of b i.e. x[n]=[1]
Enter the co-efficient of a i.e. y[n]=[1 -0.8]
Enter the length of response required N=35
y = 1.0000 1.7877 2.3812 2.7960 3.0458 3.1437 3.1028 2.9362 2.6580 2.2828 1.8263 1.3046 0.7346 0.1337 -0.4808 -1.0918 
-1.6824 -2.2369 -2.7406 -3.1802 -3.5441 -3.8230 -4.0095 -4.0986 -4.0879 -3.9774 -3.7697 -3.4698 -3.0848 -2.6243 -2.0994 
-1.5231 -0.9095 -0.2736 0.3689

