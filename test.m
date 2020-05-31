%Mixing Sound
clc;
clear;
[y1,Fs]=audioread('BirdSong_01.wav');
[y2,Fs]=audioread('water_78.wav');
subplot(3,1,1);
plot(y1);
subplot(3,1,2);
plot(y2);
subplot(3,1,3);
y3 = y1*(10^(0/20)) + y2*(10^(-6/20));
plot(y3);
soundsc(y3);