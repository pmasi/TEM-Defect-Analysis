% AtomicCounter.m 
%
% - Matlab script for counting the number of atoms in a HRTEM micrograph
% - Only suitable for heavy atoms such as Mo or W

% Import file
filename = uigetfile;
I = imread(filename);

% Create Gaussian-blur-filtered image for comparison
Igaussfiltered = imgaussfilt(I,0.1);

% Threshold image into binary
% level = graythresh(I);
bwimage = im2bw(Igaussfiltered,0.25);

% Filter binary image based on particle size
bwimagefiltered = bwareafilt(bwimage,[5 300]);

% Get particle statistics
dummy = bwlabel(bwimagefiltered);
imagestats = regionprops(dummy, 'basic');
numberofatoms = length(imagestats)
imshowpair(Igaussfiltered,bwimagefiltered,'montage')
