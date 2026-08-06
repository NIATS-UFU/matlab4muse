function id = getDeviceID(cmd)

response = sendCommand(cmd,uint8([hex2dec('8E') 0]));

value = typecast(uint8(response(5:8)),'uint32');

id = upper(dec2hex(value,8));

end