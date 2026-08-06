function value = readCharacteristic(device, serviceUUID, characteristicUUID)
%READCHARACTERISTIC Read a BLE GATT characteristic.
%
% INPUT
%   device             - BLE device object.
%   serviceUUID        - Service UUID.
%   characteristicUUID - Characteristic UUID.
%
% OUTPUT
%   value              - Characteristic value.

arguments
    device
    serviceUUID string
    characteristicUUID string
end

c = characteristic(device, serviceUUID, characteristicUUID);

value = read(c);

end