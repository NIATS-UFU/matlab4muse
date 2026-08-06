function setMuseDateTime(cmd)
%SETMUSEDATETIME Sets the Muse real-time clock.
%
% INPUT
%   cmd - Command characteristic.

% current Unix timestamp
timestamp = uint32(posixtime(datetime("now")));

% convert to bytes
payload = typecast(timestamp,"uint8");

% send command
response = sendCommand(cmd,[hex2dec('0B') 4 payload]);

% display response
fprintf("Device clock updated.\n");
disp(upper(join(string(dec2hex(response)), " ")));

end