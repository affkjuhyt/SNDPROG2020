clc;
clear;
filename = 'mix3_11_1.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 264600]);

[x11, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [44100 264600]);

x3 = x3 * 1.25;
x11 = x11 * 0.25;

x3_11 = x3 + x11;
audiowrite(filename, x3_11, Fs);