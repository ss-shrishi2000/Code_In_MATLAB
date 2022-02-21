Design and implementation of FIR filter 
Method 2 :-
  
  Question :-
    The following program gives only the design of the FIR filter, for implementation continue with the next program (after h[n]).
      Input data to be given: Passband & Stopband frequency
      Data given: Passband ripple & stopband attenuation As. If As>44 dB, Choose hamming window
      
      PROGRAM :-
        
      clc; clear all; close all;
      wpa =input('Enter passband edge frequency in Hz = ');
      wsa = input('Enter stopband edge frequency in Hz = ');
      wsamp = input('Enter sampling frequency in Hz = ');

      %Calculate transmission BW, Transition band tb, order of the filter
      wpd=2*pi*wpa/wsamp;
      wsd=2*pi*wsa/wsamp;
      tb=wsd-wpd;
      N=ceil(6.6*pi/tb)
      wc=( wsd+ wpd)/2;
      %compute the normalized cut off frequency
      wc= wc /pi
      %calculate & plot the window
      hw=hamming(N+1);
      figure(1);
      stem(hw);
      title('Fir filter window sequence- hamming window');
      %find h(n) using FIR
      h=fir1(N,wc,hamming(N+1))
      %plot the frequency response
      figure(2);
      [m,w]=freqz(h,1,128);
      mag=20*log10(abs(m));
      plot(wsamp*w/(2*pi),mag);
      title('Fir filter frequency response');
      grid;

     Result:-
       
Enter passband edge frequency in Hz = 100
Enter stopband edge frequency in Hz = 200
Enter sampling frequency in Hz = 1000
N = 33
wc = 0.3000
h = 0.0002 0.0016 0.0022 0.0006 -0.0037 -0.0074 -0.0048 0.0065 0.0191
0.0181 -0.0053 -0.0396 -0.0529 -0.0128 0.0852 0.2052 0.2877 0.2877
0.2052 0.0852 -0.0128 -0.0529 -0.0396 -0.0053 0.0181 0.0191 0.0065
-0.0048 -0.0074 -0.0037 0.0006 0.0022 0.0016 0.0002
