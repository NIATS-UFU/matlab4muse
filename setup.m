%% Add project folders to the MATLAB path

projectRoot = fileparts(mfilename("fullpath"));
srcFolder = fullfile(projectRoot,"src");

addpath(genpath(srcFolder));