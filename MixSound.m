%Mixing Sound

[y1,Fs]=audioread('audio/Am thanh goc/Carhorn.wav',[1 250000]);
[y2,Fs]=audioread('audio/Am thanh goc/crowd.wav',[1 250000]);
[y3,Fs]=audioread('audio/Am thanh goc/CarEngine.wav',[1 250000]);
[y4,Fs]=audioread('audio/Am thanh goc/CarEngine02.wav',[1 250000]);
[y5,Fs]=audioread('audio/Am thanh goc/walk.wav',[1 250000]);

% Mix 5 signal together
y=y1+y2+y3+y4+y5;
audiowrite('audio/SoundEffect/MixSound.wav',y,44100);
