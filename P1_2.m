[x,fs]=audioread('noisy_echoed_voice.wav');
[beta,y]=necho(x,fs);
    % x : noisy echoed voice
    % y : noisy voice
ts=1/fs;
N=length(x);
T=ts*N;
t=0:ts:T-ts;
f=-fs/2:fs/N:fs/2-fs/N;
X=fftshift(fft(x));
Y=fftshift(fft(y));
figure(1)  %%time domain
subplot(2,1,1);
plot(t,x);
xlabel('t (s)');
title('Noisy Echoed Voice in TIME DOMAIN');
subplot(2,1,2);
plot(t,y);
xlabel('t (s)');
title('Noisy Voice in TIME DOMAIN');
figure(2)   %%Freq Domain
subplot(2,1,1);
plot(f,abs(X));
xlabel('f (Hz)');
title('Noisy Echoed Voice in Fourier Domain');
subplot(2,1,2);
plot(f,abs(Y));
xlabel('f (Hz)');
title('Noisy Voice in Fourier Domain');
