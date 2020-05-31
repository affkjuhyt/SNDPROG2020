clc;
clear;
filename = 'mix3_13_11.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [220500 396900]);
[x11, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [220500 396900]);
[x13, Fs] = audioread('audio/Original/Talk1.wav', [220500 396900]);

x11 = x11 * 0.15;
x3 = x3 * 0.15;
x13 = x13 * 2.5;
x3_13_11 = x3 + x13 + x11;
audiowrite(filename, x3_13_11, Fs);