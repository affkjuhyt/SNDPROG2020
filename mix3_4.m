clc;
clear;
filename = 'mix3_4.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 132300]);

[x4, Fs] = audioread('audio/Original/FootstepOnWoodenFloor.wav', [132300 220500]);
x4 = x4 * 1.5;
x3 = x3 * 0.75;
x3_4 = x3 + x4;
audiowrite(filename, x3_4, Fs);