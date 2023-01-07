function [beta,y]=necho(x,fs)
            alpha=0.8;
            
            %%Find beta
            X=rceps(x);
            X=X(500:end-500);
            n=1:length(x);
            n=n(500:end-500);
            maximum=max(X);
            index=X==maximum;
            beta=n(index);
            beta=beta(1);
             %% The logic behind removing the echo is using the inverse transfer function we use to add echo. In this case we replace numinator and denuminator
            %%Using inverse system function to remove echo                                 
            numinator=1;
            denuminator=[1 zeros(1,beta-2) alpha];
            y=filter(numinator,denuminator,x);
            
             %% Writting the audio file as noisy voice
             audiowrite('noisy_voice.wav',y,fs);
             disp('Beta=');
             disp(beta);
end