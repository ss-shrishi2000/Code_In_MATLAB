tfinal=0.04;
t=0:0.00002:tfinal;


% define analog signal for comparison
fd=input('Enter analog freuency ');
xt=sin(2*pi*fd*t);

% define sampling frequency for all 3 conditions
fs1 = 1.4 *fd;
fs2 = 2 *fd;
fs3 = 10 * fd;

% define the time vector
n1=0 : 1/fs1 : tfinal;
n2=0 : 1/fs2 : tfinal;
n3=0 : 1/fs3 : tfinal;

% Generate the sampled signals
xn1 = sin(2*pi*n1*fd);
xn2 = sin(2*pi*fd*n2);
xn3 = sin(2*pi*fd*n3);

% Compute DFT coefficients
Xk1 = fft(xn1);
Xk2 = fft(xn2);
Xk3 = fft(xn3);


% frequency index for spectrum plot
f1 = (0:length(Xk1)-1) * fs1/length(Xk1);
f2 = (0:length(Xk2)-1) * fs2/length(Xk2);
f3 = (0:length(Xk3)-1) * fs3/length(Xk3);


%plot the analog & sampled signals
subplot(3,2,1);
plot(t,xt,'b',n1,xn1,'r*-');
title('under sampled plot');
subplot(3,2,3);
plot(t,xt,'b',n2,xn2,'r*-');
title('Nyquist plot');
subplot(3,2,5);
plot(t,xt,'b',n3,xn3,'r*-');
title('Over sampled plot');
xlabel('time');
ylabel('amplitude');
% plot the magnitude spectrum (DFT) of sampled signals
subplot(3,2,2);
stem(f1,abs(Xk1));
title('spectrum of under sampled plot');
subplot(3,2,4);
stem(f2,abs(Xk2));
title('spectrum of right sampled plot');
subplot(3,2,6);
stem(f3,abs(Xk3));
title('spectrum of over sampled plot');
xlabel('frequency index');
ylabel('magnitude');


