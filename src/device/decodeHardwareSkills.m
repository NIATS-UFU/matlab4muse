function hw = decodeHardwareSkills(mask)

hw.gyroscope      = logical(bitand(mask,hex2dec('0001')));
hw.accelerometer  = logical(bitand(mask,hex2dec('0002')));
hw.magnetometer   = logical(bitand(mask,hex2dec('0004')));
hw.hdr            = logical(bitand(mask,hex2dec('0008')));
hw.temperature    = logical(bitand(mask,hex2dec('0010')));
hw.humidity       = logical(bitand(mask,hex2dec('0020')));
hw.pressure       = logical(bitand(mask,hex2dec('0040')));
hw.lightVisible   = logical(bitand(mask,hex2dec('0080')));
hw.lightIR        = logical(bitand(mask,hex2dec('0100')));
hw.range          = logical(bitand(mask,hex2dec('0200')));
hw.microphone     = logical(bitand(mask,hex2dec('0400')));

end