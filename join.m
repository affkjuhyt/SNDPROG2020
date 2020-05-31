clc;
clear;
[y0,fs] = audioread('audio/Original/BikeStart.wav');
[y1, fs] = audioread('audio/Original/DoorKnocking.wav');
filename = 'jointest.wav';
y2 = [y0; y1];
% To Listen:
sound(y2,fs);
% To Write to WAV:
audiowrite(filename,y2,fs);