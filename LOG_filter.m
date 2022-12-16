function outims = LOG_filter(ims,param1,param2)

% This generates the LOG filter itself.
% The bandwidth (here 1.5) may need to be changed depending
% on the pixel size of your camera and your microscope's
% optical characteristics.
% H = -fspecial('log',15,1.5);

H = -fspecial('log',param1,param2);

% Here, we amplify the signal by making the filter "3-D"
H = 1/3*cat(3,H,H,H);

% Apply the filter
outims = imfilter(ims,H,'replicate');

% Set all negative values to zero
outims(find(outims<0)) = 0;