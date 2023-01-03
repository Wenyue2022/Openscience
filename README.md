%% GUAN et al. 2022. smFish analysis source code related to star Method smFish analysis

%% ImSAnE installation instructions

Download ZIP

Extract the ZIP 
Set the file path wherever you want

E.g. C:\ImSAnE in windows or \User\Shared\ImSAnE

create a subfolder within ImSAnE, rename it as /external

copy the following files from \ImSAnE into \external : 

- Fseries.m
- ellipseFit.m
- rotationmat3D.m
- tripick.m
- vec2str.m
- write_wobj.m

copy the folder /fast_marching into /external

create a folder in /fast_marching and rename as /gw

copy the following folders from /ImSAnE into /fast_marching/gw :

- gw_core
- gw_geodesic
- gw_maths
- gw_toolkit

Open /ImSAnE/setup.m in matlab and run each block with command + enter
The last block contain settings that can be changed or left to their default.


%% MATLAB versions successfully tested:

Certain functions used require Matlab version 2012a or later. 
Tested combinations of Matlab and operating system sorted by Matlab version:

Matlab 2014a
	- Mac OS X 10.10.2

Matlab 2013a
	- Mac OS X 10.10.2
	- Ubuntu LTS 12.04 & 14.04
        - Windows 7 Professional


%% Bioformats to automatically read metadata

The reading of raw data assumes tif format and requires specification of number of channels by hand.
To read more formats and detect some metadata automatically, one can download the bioformats package from

http://downloads.openmicroscopy.org/bio-formats/5.1.3/

and place the jar file in the folder external/bfmatlab
