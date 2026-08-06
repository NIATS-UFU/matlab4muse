%% Initialize environment

setup

clear
clc
close all

%% List available serial ports

disp('list usb devices...')
serialportlist("available")

%% Connect to USB device

muse_port = "COM43";

cmd = connectUSB(muse_port);

%% General Device Info
info = getDeviceInfo(cmd);

disp(info)

%% Muse DateTime

% set the Muse real-time clock
setMuseDateTime(cmd);

% get the Muse real-time clock
getMuseDateTime(cmd);

%% Sensor configuration

% get the Muse scales
scales = getSensorScales(cmd);

disp("Sensor Full-Scale Configuration")
disp("--------------------------------")

disp("Gyroscope")
disp(scales.gyroscope)

disp("Accelerometer")
disp(scales.accelerometer)

disp("HDR Accelerometer")
disp(scales.hdrAccelerometer)

disp("Magnetometer")
disp(scales.magnetometer)

%% Disconnect USB
cmd = disconnectUSB(cmd);