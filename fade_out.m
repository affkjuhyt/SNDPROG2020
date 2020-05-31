clear;
clc;
filename = 'fadeout.wav';
[y1,Fs] = audioread('audio/Edit/0to3fadein.wav');
N = length(y1);
factor = (1.0-0.01)/N;
coeff = [0.01:factor:1.0-factor];
#expcoeff = 10.^coeff;
coeff = coeff';
y3=y1.*coeff;

ramp3 = flipud(y3);
audio_out = y1.* ramp3;
plot(audio_out, 'g');