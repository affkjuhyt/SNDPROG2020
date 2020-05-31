clc;
clear;
filename = 'mix2_11.wav';
[x2, Fs] = audioread('audio/Original/Crackling_Fire.wav', [44100 264600]);

[x11, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [44100 264600]);

x11 = x11 * 0.05;

x2_11 = x2 + x11;
audiowrite(filename, x2_11, Fs);