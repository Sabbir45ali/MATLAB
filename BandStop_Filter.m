% TP design a Butterworth bandstop filter
% for the given specifications
clear all;
alphap = 2;
alphas = 20;
ws = [.2*pi, .4*pi];
wp = [.1*pi, .5*pi];
[n, wn] = buttord (wp/pi , ws/pi, alphap ,alphas);
[b, a] = butter (n, wn, 'stop');
w = 0.1 : .01 : pi
[h, ph] = freqz (b, a, w);
m = 20*log10(abs(h));
an = angle (h);
subplot (2,1,1);plot(ph/pi, m); 
grid;
ylabel ('gain in dB')
xlabel ('normalisec frequenct');

subplot(2, 1, 2);plot (ph/pi, an) ; 
grid;
xlabel ('normalised frequency');
ylabel ('phase in radians');
