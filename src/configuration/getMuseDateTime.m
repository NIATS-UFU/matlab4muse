function timestamp = getMuseDateTime(cmd)
%GETMUSEDATETIME Reads the Muse real-time clock.
%
% OUTPUT
%   timestamp - datetime object.

response = sendCommand(cmd,[hex2dec('8B') 0]);

unixTime = typecast(uint8(response(5:8)),'uint32');

timestamp = datetime(unixTime, ...
    'ConvertFrom', 'posixtime', 'TimeZone', 'UTC');

disp(timestamp)

end