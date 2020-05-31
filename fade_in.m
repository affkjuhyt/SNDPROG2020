clear;
clc;
filename = 'fadeout.wav';
[y1,Fs] = audioread('audio/Edit/0to3fadein.wav');
N = length(y1);
factor = (1.0-0.01)/N;
coeff = [0.01:factor:1.0-factor];
#expcoeff = 10.^coeff;
coeff = coeff';
y3=y1.*coeff;

ramp3 = flipud(y3);
audio_out = y1.* ramp3;
plot(audio_out, 'g');
#subplot(3,2,5);
#plot(y3);
#sound(y3,Fs);
#subplot(3,2,2);
#plot(expcoeff);
#audiowrite(filename, y3, Fs);

#sz_seg = sz(0*fs:1*fs);
#length(sz_seg);
#sound(sz_seg,fs);

#[so fs] = audioread('Sea_Beach_Waves_1.wav');
#so_seg = so(10*fs:20*fs);

#[st fs] = audioread('audio/sample02.wav');
#st_seg = st(10*fs:20*fs);

#tong_hop = sz_seg + so_seg;

#sound(tong_hop,fs);

% Fade in 
#ramp = 0:1/(1*fs):1;
#audio_out = sz_seg.* ramp';
#sound(audio_out,fs);
#plot(audio_out, 'r');


% Fade out
#ramp = ramp';
#ramp1 = flipud (ramp);
#audio_out = tong_hop.* ramp1;
#sound(audio_out, fs);
#plot(audio_out, 'g');