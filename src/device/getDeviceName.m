function name = getDeviceName(cmd)

response = sendCommand(cmd,uint8([hex2dec('8C') 0]));

name = char(response(5:end));

name = erase(name,char(0));

end