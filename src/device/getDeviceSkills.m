function skills = getDeviceSkills(cmd)

response = sendCommand(cmd,uint8([hex2dec('8F') 0]));

hardware = typecast(uint8(response(5:8)),'uint32');

software = typecast(uint8(response(9:12)),'uint32');

skills.hardware = decodeHardwareSkills(hardware);

skills.software = decodeSoftwareSkills(software);

end