function scales = decodeSensorScales(config)
%DECODESENSORSCALES Decode sensor scale configuration.

arguments
    config (1,1) uint16
end

scales = struct();

scales.gyroscope = decodeGyroscope( ...
    bitand(config, uint16(hex2dec("0003"))));

scales.accelerometer = decodeAccelerometer( ...
    bitand(config, uint16(hex2dec("000C"))));

scales.hdrAccelerometer = decodeHDRAccelerometer( ...
    bitand(config, uint16(hex2dec("0030"))));

scales.magnetometer = decodeMagnetometer( ...
    bitand(config, uint16(hex2dec("00C0"))));

end