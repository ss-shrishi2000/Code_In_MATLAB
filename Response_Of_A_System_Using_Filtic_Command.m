
Matlab Program:
clc; clear all;
a=input('Enter the co-efficient of y(n),y(n-1)......= ');
b=input('Enter the co-efficeint of x(n),x(n-1)......= ');
Yic=input('Enter initial conditions Y(-1),Y(-2)....= ');
Xic=input('Enter initial conditions X(-1),X(-2)....= ');
zi=filtic(b,a,Yic,Xic);
n=0:9;
x=cos(pi*n/3); %input sequence input
y=filter(b,a,x,zi) %output response
subplot(2,1,1);stem(n,x);title('input');xlabel('n');ylabel('x(n)');

subplot(2,1,2);stem(n,y); title('response of difference equation with initial conditions ');

xlabel('n');ylabel('y(n)');


Result:
Enter the co-efficient of y(n),y(n-1)......= [1 -0.95 0.9025]
Enter the co-efficeint of x(n),x(n-1)......= [(1/3) (1/3) (1/3)]
Enter initial conditions Y(-1),Y(-2)....= [-2 -3]
Enter initial conditions X(-1),X(-2)....= [1 1]
y = 1.8075 4.3555 2.8398 -1.5664 -4.7176 -3.4014 1.3596 5.0281 3.8829 -1.1824
