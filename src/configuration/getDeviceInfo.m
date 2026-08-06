function info = getDeviceInfo(device)
%GETDEVICEINFO Read general information from a Muse device.
%
% INPUT
%   device - BLE or USB device.
%
% OUTPUT
%   info - Structure containing device information.

info = struct();

%% Device Information Service (BLE)

if isa(device,"ble")

    info.manufacturer = getManufacturerName(device);
    info.firmwareVersion = getFirmwareVersion(device);
    info.hardwareVersion = getHardwareVersion(device);
    info.serialNumber = getSerialNumber(device);
    info.systemID = getSystemID(device);

else

%% Muse Commands (USB)

info.deviceName = getDeviceName(device);

info.deviceID = getDeviceID(device);

info.skills = getDeviceSkills(device);

end

end