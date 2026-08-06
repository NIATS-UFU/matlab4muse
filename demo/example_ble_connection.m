%% Initialize environment

setup

clear
clc
close all

%% List available devices

blelist

%% Connect to device

muse = ble("muse_v3");

%% Device Info
info = getDeviceInfo(muse);

disp(info)
