%% Initialize environment

setup

clear
clc
close all

%% List available serial ports

disp('list usb devices...')
serialportlist("available")

%% Connect to USB device

muse_port = "COM41";

cmd = connectUSB(muse_port);

%% DateTime

% set the Muse real-time clock
setMuseDateTime(cmd);

% get the Muse real-time clock
getMuseDateTime(cmd);

%% Disconnect USB
cmd = disconnectUSB(cmd);