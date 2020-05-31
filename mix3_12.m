clc;
clear;
filename = 'mix3_12.wav';
[x12, Fs] = audioread('audio/Original/DoorKnocking.wav', [44100 220500]);
[x3, Fs] = audioread('audio/Original/Cricketsound.wav', [44100 220500]);

x12 = x12 * 2;
x3 = x3 * 0.75;
x3_12 = x3 + x12;

audiowrite(filename, x3_12, Fs);