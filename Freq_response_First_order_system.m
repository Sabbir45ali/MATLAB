%To plot the frequency response of the first order syatem 
clear all;
b = [1];
a = [1, -.8];
w = 0:.01:2*pi;
[h] = freqz (b,a,w);
subplot (2,1,1), 
plot(w/pi, abs(h));
title ('frequency response of I, order system h(n)= 0.8^nu(n)')
xlabel ('normalised frequency');
ylabel ('magnitude');
subplot (2,1,2); plot (w/pi, angle(h));
xlabel ('normalised frequency');
ylabel ('phase in radians');