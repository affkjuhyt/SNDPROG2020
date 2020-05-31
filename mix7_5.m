clc;
clear;
filename = 'mix7_5.wav';
[x7, Fs] = audioread('audio/Original/Planesound.wav', [88200 264600]);

[x5, Fs] = audioread('audio/Original/Meow.wav', [88200 264600]);

x7_5 = x5 + x7;
audiowrite(filename, x7_5, Fs);