function Hd = filter1
%FILTER1 Returns a discrete-time filter object.

%
% MATLAB Code
% Generated by MATLAB(R) 7.13 and the Signal Processing Toolbox 6.16.
%
% Generated on: 11-Dec-2013 15:43:17
%

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 3500;  % Sampling Frequency

Fstop1 = 570;         % First Stopband Frequency
Fpass1 = 630;         % First Passband Frequency
Fpass2 = 690;         % Second Passband Frequency
Fstop2 = 750;         % Second Stopband Frequency
Astop1 = 100;         % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 100;         % Second Stopband Attenuation (dB)
match  = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
