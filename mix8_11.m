clc;
clear;
filename = 'mix8_11.wav';
[x8, Fs] = audioread('audio/Original/SlowlyDrivingOff.wav', [485100 705600]);

[x11, Fs] = audioread('audio/Original/FootstepOnGrass.wav', [44100 264600]);

x8 = x8 * 2;

x8_11 = x8 + x11;
audiowrite(filename, x8_11, Fs);