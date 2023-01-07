[x,fs]=audioread('noisy_echoed_voice.wav');
[beta,y]=necho(x,fs);