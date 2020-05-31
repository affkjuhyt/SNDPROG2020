clc;
clear;
filename = 'mix3_13_11.wav';
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 88200]);
[x9, Fs] = audioread('audio/Original/WolfHowl.wav', [44100 88200]);
[x14, Fs] = audioread('audio/Original/Talk2.wav', [44100 88200]);

x9 = x9 * 2;
x3 = x3 * 0.15;
x14 = x14 * 2.5;
x9_14_3 = x9 + x14 + x3;
audiowrite(filename, x9_14_3, Fs);