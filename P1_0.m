    %%Section 1- Before Q1
[x,fs]=audioread('Voice.m4a');
delay=0.15;
beta=delay*fs;
alpha=0.8;
h(1)=1;
h(beta+1)=alpha;
y=conv(x,h,'same');                             %add echo
N=transpose(0.2*rand(1,length(y)));            %generate noise
z=y+0.2*N;                                          %add noise
audiowrite('noisy_echoed_voice.wav',z,fs);