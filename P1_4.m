[x,fs]=audioread('Voice.m4a');
[y,~]=audioread('cleared_voice.wav');
N=length(x);
T=N/fs;
t=0:1/fs:T-1/fs;
f=-fs/2:fs/N:fs/2-fs/N;
X=fftshift(fft(x));
Y=fftshift(fft(y));
%% Removing DC Term of y
index=find(f==0);
Y(index)=0;

figure(1)  %%time domain
subplot(2,1,1);
plot(t,x);
xlabel('t (s)');
title('Original Voice in TIME DOMAIN');
subplot(2,1,2);
plot(t,y);
xlabel('t (s)');
title('Cleared Voice in TIME DOMAIN');
figure(2)   %%Freq Domain
subplot(2,1,1);
plot(f,abs(X));
xlabel('f (Hz)');
title('Original Voice in Fourier Domain');
subplot(2,1,2);
plot(f,abs(Y));
xlabel('f (Hz)');
title('Cleared Voice in Fourier Domain');