function id = getSystemID(device)
%GETSYSTEMID Read BLE System ID.

bytes = readCharacteristic( ...
    device, ...
    "180A", ...
    "2A23");

id = upper(join(string(dec2hex(bytes,2)), ""));

id = id{1};

end