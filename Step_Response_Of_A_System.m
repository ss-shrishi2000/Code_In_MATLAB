clc; close all; clear all
b=input('Enter the co-efficients of b ie x[n]=');
a=input('Enter the co-efficients of a ie y[n]=');
N=input('Enter the length of response required N=');
n=0:1:N-1;
x=[ones(1,N)];
y=filter(b,a,x)
subplot(211); stem(n,x); title('Step input');
subplot(212); stem(n,y); title('Step response');


Result:
Enter the co-efficients of b ie x[n]=[1]
Enter the co-efficients of a ie y[n]=[1 -1 0.9]
Enter the length of response required N=10
y = 1.0000 2.0000 2.1000 1.3000 0.4100 0.2400 0.8710 1.6550 1.8711 1.3816
