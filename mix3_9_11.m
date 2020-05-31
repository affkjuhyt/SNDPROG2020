clc;
clear;
filename = 'mix3_9_11.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 132300]);
[x11, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [44100 132300]);
[x9, Fs] = audioread('audio/Original/WolfHowl.wav', [44100 132300]);

x11 = x11 * 0.5;
x3 = x3 * 1.25;
x3_9_11 = x3 + x9 + x11;
audiowrite(filename, x3_9_11, Fs);