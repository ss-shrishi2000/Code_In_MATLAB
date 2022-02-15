clc; clear all; close all;
x = input('Enter the first sequence');
h = input('Enter the second sequence');

N = max(length(x), length(h));
for n=0:N-1
    y(n+1)=0
    for k=0:N-1
        i = (mod(n-k,N))
        y(n+1) = y(n+1) + h(k+1)*x(i+1)
    end
end

n1 = 0:N-1

stem(n1,y);
xlabel('--->n');
ylabel('y[n]');
