function scales = getSensorScales(cmd)
%GETSENSORSCALES Read the full-scale configuration of the sensors.
%
% INPUT
%   device - USB device.
%
% OUTPUT
%   scales - Sensor scale configuration.

arguments
    cmd
end

response = sendCommand(cmd, uint8([hex2dec("C0") 0]));

config = typecast(uint8(response(5:6)), "uint16");

scales = decodeSensorScales(config);

end