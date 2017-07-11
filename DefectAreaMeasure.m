% AtomicCounter.m 
%
% - Matlab script for counting the number of atoms in a HRTEM micrograph
% - Only suitable for heavy atoms such as Mo or W

% Import file
filename = uigetfile;
I = imread(filename);

% Create Gaussian-blur-filtered image for comparison
% Igaussfiltered = imgaussfilt(I,0.1);

% Threshold image into binary and compute defected area
% level = graythresh(I);
bwimage = imbinarize(I,0.1);
defectarea = 1-(sum(sum(bwimage))/(1048576))
imshowpair(I,bwimage,'montage')
