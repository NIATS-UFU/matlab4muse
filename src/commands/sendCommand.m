function response = sendCommand(cmd,payload)
%SENDCOMMAND Sends a command and returns the decoded response.

%wrap = @(bytes) uint8([0x3F, 0x21, bytes, 0x21, 0x3F]);
%unwrap = @(packet) packet(3:end-2);

write(cmd,wrap(uint8(payload)),"uint8");

pause(0.1);

raw = read(cmd,cmd.NumBytesAvailable,"uint8");

response = unwrap(raw);

end