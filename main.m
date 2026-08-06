%% Initialize environment

setup

clear
clc
close all

%% List available serial ports

disp('list usb devices...')
serialportlist("available")

%% Connect to USB device

muse_port = "COM42";

cmd = connectUSB(muse_port);

%% Device Info
info = getDeviceInfo(cmd);

disp(info)

%% Muse DateTime

% set the Muse real-time clock
setMuseDateTime(cmd);

% get the Muse real-time clock
getMuseDateTime(cmd);

%% Disconnect USB
cmd = disconnectUSB(cmd);