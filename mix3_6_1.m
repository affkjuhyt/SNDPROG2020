clc;
clear;
filename = 'mix3_6_1.wav';

[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 176400]);
[x6, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [44100 176400]);
[x1, Fs] = audioread('audio/Original/BikeStart.wav', [44100 176400]);

x3 = x3 * 0.75;
x6 = x6* 0.5;
x1 = x1 * 0.75;

x3_6_1 = x3 + x1 + x6;
audiowrite(filename, x3_6_1, Fs);