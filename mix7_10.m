clc;
clear;
filename = 'mix7_10.wav';
[x10, Fs] = audioread('audio/Original/TrafficSound.wav', [88200 220500]);

[x7, Fs] = audioread('audio/Original/Planesound.wav', [88200 220500]);
x10 = 0.2 * x10;
x7_10 = x10 + x7;
audiowrite(filename, x7_10, Fs);