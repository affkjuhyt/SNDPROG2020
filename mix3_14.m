clc;
clear;
filename = 'mix3_14.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [88200 264600]);
[x14, Fs] = audioread('audio/Original/Talk2.wav', [88200 264600]);

x3 = x3 * 0.2;
x14 = x14 * 5;
x3_14 = x14 + x3;
audiowrite(filename, x3_14, Fs);