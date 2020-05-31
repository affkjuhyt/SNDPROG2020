% Written by: Katarina Vuckovic
% Florida Institute of Technology, Department of Electrical Engineering
% Program written for the purpose of speech processing and detection
% research 
% Date: 8/9/2019

% This program mixes 2 sound .wav files into one file
% The program handles .wav files of different lengths and bit rates
%
% For files of different length the program give the user 2 options:
% Option 1: combine two files of different length  such that they both 
% start at the same time and after the short file is complete, the longer 
% file continues until it is complete
% Option 2: combine two files such of different length such that when the
% shorter file is complete it restarts as many times as needed until the
% longer file is complete
%
% If the files have different bit-rates and different frequencies, the
% program will choose the higher of the two frequencies

filename='test1.wav';
[y1, fs1]=audioread(filename);

filename='test3.wav';
[y2, fs2]=audioread(filename);

n = input('select 1 if you want the shorter file to stop on completion\n select 2 if you want the shorter file to repeat unitl the longer file is complete:')

switch n
    case 1
        %CASE 1: files different length - combine them such that they start at the
        %same time and when the the shorted one its done
        if length(y1) > length(y2)
            delta = length(y1) - length(y2);
            add = zeros(delta,1);
            y2 = cat(1, y2, add);
        elseif length(y2) > length(y1)
            delta = length(y2) - length(y1);
            add  = zeros(delta,1);
            y1 = cat(1, y1, add);
        else
            delta = 0;
        end
        
    case 2
        %CASE 2: when the shorter one finishes it restarts the shorter sound as
        %many times as needed until the longer finishes]
        
        if length(y1) > length(y2)
            f = floor(length(y1)/length(y2));
            remain = mod(length(y1),length(y2));
            y2 = repmat(y2,f,1);
            add = y2(1:remain);
            y2 = cat(1, y2, add);
        elseif length(y2) > length(y1)
            f= floor(length(y2)/length(y1));
            remain = mod(length(y2),length(y1));
            y1 = repmat(y1,f,1);
            add = y1(1:remain);
            y1 = cat(1, y1, add);
        else
            delta = 0;
        end
    otherwise
        disp('invalid option')
end


y = y1+y2;
fs = max(fs1,fs2);
audiowrite('mix.wav',y,fs)

